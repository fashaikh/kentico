SET IDENTITY_INSERT [OM_ActivityType] ON
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (30, N'Custom activity', N'customactivity', 1, 1, N'Custom activity.', 1, N'##default##', N'##default##')
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (31, N'Blog post subscription', N'blogpostsubscription', 1, 0, N'The visitor subscribed to blog post comments.', 0, NULL, N'selectdocument')
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (32, N'Forum post subscription', N'forumpostsubscription', 1, 0, N'The visitor subscribed to a forum post.', 0, N'ForumSelector', NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (33, N'Message board subscription', N'messageboardsubscription', 1, 0, N'The visitor subscribed to a  message board.', 0, N'MessageBoardNameSelector', NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (34, N'User contribution - content deleted', N'usercontributiondelete', 1, 0, N'The visitor deleted content using the User Contributions module.', 0, NULL, NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (35, N'User contribution - content updated', N'usercontributionupdate', 1, 0, N'The visitor updated content using the User Contribution module.', 0, NULL, NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (36, N'User contribution - content created', N'usercontributioninsert', 1, 0, N'The visitor created new content using the User Contributions module.', 0, NULL, NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (37, N'Form submission', N'bizformsubmit', 1, 0, N'The visitor submitted an on-line form.', 0, N'BizFormSelector', NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (38, N'Poll voting', N'pollvoting', 1, 0, N'The visitor voted in a poll.', 0, N'pollselector', NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (39, N'Event booking', N'eventbooking', 1, 0, N'The visitor signed up for an event using the Booking system.', 0, NULL, NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (40, N'Content rating', N'rating', 1, 0, N'The visitor rated some content.', 0, NULL, NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (41, N'Abuse report', N'abusereport', 1, 0, N'The visitor reported an abuse using the Abuse Report module.', 0, NULL, NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (42, N'Message board comment', N'messageboardcomment', 1, 0, N'The visitor posted a comment on a message board.', 0, N'MessageBoardNameSelector', NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (43, N'Forum post', N'forumpost', 1, 0, N'The visitor posted on the forum.', 0, N'ForumSelector', NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (44, N'Blog comment', N'blogcomment', 1, 0, N'The visitor commented on a blog post.', 0, NULL, N'selectdocument')
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (45, N'Internal search', N'internalsearch', 1, 0, N'The visitor searched for text using the on-site search.', 0, NULL, NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (46, N'External search', N'externalsearch', 1, 0, N'The visitor came to the website after searching on a search engine, such as Google.', 0, NULL, NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (47, N'Clicked newsletter link', N'newsletterclickthrough', 1, 0, N'The subscriber clicked a tracked link in a newsletter.', 0, N'NewsletterSelectorSimple', NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (48, N'Opened newsletter e-mail', N'newsletteropen', 1, 0, N'The subscriber opened a tracked newsletter.', 0, N'NewsletterSelectorSimple', NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (49, N'Newsletter unsubscription', N'newsletterunsubscription', 1, 0, N'The visitor unsubscribed from a newsletter.', 0, N'NewsletterSelectorSimple', N'NewsletterIssueSelector')
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (50, N'Newsletter subscription', N'newslettersubscription', 1, 0, N'The visitor subscribed to a newsletter.', 0, N'NewsletterSelectorSimple', NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (51, N'Customer registration', N'customerregistration', 1, 0, N'The customer registered during the checkout process.', 0, NULL, NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (52, N'Purchase', N'purchase', 1, 0, N'The visitor made a purchase.', 0, NULL, NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (53, N'Product added to wishlist', N'productaddedtowishlist', 1, 0, N'The visitor added a product to the wishlist.', 0, N'SKUSelector', NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (54, N'Product removed from shopping cart', N'productremovedfromshoppingcart', 1, 0, N'The visitor removed a product from the shoppingcart.', 0, N'SKUSelector', NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (55, N'Product added to shopping cart', N'productaddedtoshoppingcart', 1, 0, N'The visitor added a product to the shopping cart.', 0, N'SKUSelector', NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (56, N'Leaving a group', N'leavegroup', 1, 0, N'The visitor left a community group or a workgroup.', 0, N'CommunityGroupSelector', NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (57, N'Joining a group', N'joingroup', 1, 0, N'The visitor joined a community group or a workgroup.', 0, N'CommunityGroupSelector', NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (59, N'User registration', N'userregistration', 1, 0, N'The visitor registered as a member of the site.', 0, NULL, NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (60, N'User login', N'userlogin', 1, 0, N'The visitor logged in to a site.', 0, NULL, NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (62, N'Landing page', N'landingpage', 1, 0, N'The visitor came to this page as the first page.', 0, NULL, NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (63, N'Page visit', N'pagevisit', 1, 0, N'The visitor visited a page.', 0, NULL, NULL)
INSERT INTO [OM_ActivityType] ([ActivityTypeID], [ActivityTypeDisplayName], [ActivityTypeName], [ActivityTypeEnabled], [ActivityTypeIsCustom], [ActivityTypeDescription], [ActivityTypeManualCreationAllowed], [ActivityTypeMainFormControl], [ActivityTypeDetailFormControl]) VALUES (82, N'Purchased product', N'purchasedproduct', 1, 0, N'The visitor bought a product.', 0, N'SKUSelector', NULL)
SET IDENTITY_INSERT [OM_ActivityType] OFF
