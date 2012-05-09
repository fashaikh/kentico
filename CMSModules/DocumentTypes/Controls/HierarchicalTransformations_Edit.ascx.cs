using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using CMS.UIControls;
using CMS.GlobalHelper;
using CMS.Controls;
using CMS.SettingsProvider;
using CMS.CMSHelper;

public partial class CMSModules_DocumentTypes_Controls_HierarchicalTransformations_Edit : CMSAdminEditControl
{

    #region "Private Variables"

    Guid mHierarchicalID;
    TransformationInfo mTransInfo;
    HierarchicalTransformationInfo mHierInfo;
    UniViewItemType mTemplateType;
    HierarchicalTransformations mTransformations;
    bool mShowInfoLable = false;
    string mSelectedItemType = String.Empty;

    #endregion


    #region "Properties"

    /// <summary>
    /// Data for transformation.
    /// </summary>
    public Guid HierarchicalID
    {
        get
        {
            return mHierarchicalID;
        }
        set
        {
            mHierarchicalID = value;
        }
    }


    /// <summary>
    /// Transformation info.
    /// </summary>
    public TransformationInfo TransInfo
    {
        get
        {
            return mTransInfo;
        }
        set
        {
            mTransInfo = value;
        }
    }


    /// <summary>
    /// If this control is loaded directly after item save, show this info label.
    /// </summary>
    public bool ShowInfoLabel
    {
        set
        {
            mShowInfoLable = value;
        }
        get
        {
            return mShowInfoLable;
        }
    }


    /// <summary>
    /// If true site manager is used.
    /// </summary>
    public bool IsSiteManager
    {
        get
        {
            return ucTransformations.IsSiteManager;
        }
        set
        {
            ucTransformations.IsSiteManager = value;
        }
    }


    /// <summary>
    /// Value of item type.
    /// </summary>
    public string SelectedItemType
    {
        get
        {
            return mSelectedItemType;
        }
    }

    #endregion


    #region "Methods"


    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        mSelectedItemType = Request.Form[drpTemplateType.UniqueID];
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        string templateType = QueryHelper.GetString("templatetype", String.Empty);
        
        // If not in site manager - filter class selector for only site documents 
        if (!IsSiteManager)
        {
            ucClassSelector.SiteID = CMSContext.CurrentSiteID;
        }

        if (!RequestHelper.IsPostBack())
        {
            drpTemplateType.Items.Add(new ListItem(GetString("hiertransf.item"), "item"));
            drpTemplateType.Items.Add(new ListItem(GetString("hiertransf.alternatingitem"), "alternatingitem"));
            drpTemplateType.Items.Add(new ListItem(GetString("hiertransf.firstitem"), "firstitem"));
            drpTemplateType.Items.Add(new ListItem(GetString("hiertransf.lastitem"), "lastitem"));
            drpTemplateType.Items.Add(new ListItem(GetString("hiertransf.header"), "header"));
            drpTemplateType.Items.Add(new ListItem(GetString("hiertransf.footer"), "footer"));
            drpTemplateType.Items.Add(new ListItem(GetString("hiertransf.singleitem"), "singleitem"));
            drpTemplateType.Items.Add(new ListItem(GetString("hiertransf.separator"), "separator"));
            drpTemplateType.Items.Add(new ListItem(GetString("hiertransf.currentitem"), "currentitem")); 

            //If new template type set via url
            if (!String.IsNullOrEmpty(templateType))
            {
                //lblTemplateType.Text = ConvertTemplateTypeToString(templateType);
                if (templateType != "all")
                {
                    drpTemplateType.SelectedValue = templateType;
                }
                else
                {
                    drpTemplateType.SelectedValue = "item";
                }
            }
        }

        //Info and error messages
        lblInfo.Text = GetString("general.changessaved");

        //First edit after save ... show info message
        if (ShowInfoLabel)
        {
            lblInfo.Visible = true;
        }

        if (!String.IsNullOrEmpty(templateType))
        {
            mTemplateType = HierarchicalTransformations.StringToUniViewItemType(templateType);
        }

        //Load transformations xml
        mTransformations = new HierarchicalTransformations("ClassName");
        if (TransInfo != null)
        {
            if (!String.IsNullOrEmpty(TransInfo.TransformationHierarchicalXML))
            {
                mTransformations.LoadFromXML(TransInfo.TransformationHierarchicalXML);
            }
        }

        //Edit
        if (HierarchicalID != Guid.Empty)
        {
            mHierInfo = mTransformations.GetTransformation(HierarchicalID);
            //Load Transformation values
            if (!RequestHelper.IsPostBack())
            {
                txtLevel.Text = mHierInfo.ItemLevel.ToString();
                ucTransformations.Value = mHierInfo.TransformationName;
                ucClassSelector.Value = mHierInfo.Value;
                templateType = HierarchicalTransformations.UniViewItemTypeToString(mHierInfo.ItemType);
                drpTemplateType.SelectedValue = templateType;
                mTemplateType = mHierInfo.ItemType;
            }
        }
    }


    protected void btnOK_Click(object sender, EventArgs e)
    {
        //Validate data
        string errorMessage = new Validator().NotEmpty(ucTransformations.Value, GetString("transformationedit.erroremptytransformation")).Result;

        if ((errorMessage == "") && (txtLevel.Text.Trim() != String.Empty) && (!ValidationHelper.IsInteger(txtLevel.Text)))
        {
            errorMessage = GetString("development.invalidtransformationlevel");
        }

        if (String.IsNullOrEmpty(txtLevel.Text))
        {
            txtLevel.Text = "-1";
        }

        int level = ValidationHelper.GetInteger(txtLevel.Text, -1);
        if (level < -1)
        {
            errorMessage = GetString("development.invalidtransformationlevel");
        }

        if (errorMessage != String.Empty)
        {
            lblError.Text = errorMessage;
            lblError.Visible = true;
            return;
        }

        //Fill the info         
        if (mHierInfo == null)
        {
            mHierInfo = new HierarchicalTransformationInfo();
            mHierInfo.ItemID = Guid.NewGuid();
        }


        mHierInfo.ItemLevel = ValidationHelper.GetInteger(txtLevel.Text, 0);
        mHierInfo.TransformationName = ucTransformations.Value.ToString();
        mHierInfo.Value = ucClassSelector.Value.ToString();
        mHierInfo.ItemType = HierarchicalTransformations.StringToUniViewItemType(drpTemplateType.SelectedValue);

        if ((mTransformations != null) && (TransInfo != null))
        {
            mTransformations.SetTransformation(mHierInfo);
            TransInfo.TransformationHierarchicalXML = mTransformations.GetXML();
            TransformationInfoProvider.SetTransformation(TransInfo);
            HierarchicalID = mHierInfo.ItemID;

            RaiseOnSaved();
        }

        lblInfo.Visible = true;
        lblError.Visible = false;

    }

    #endregion
}
