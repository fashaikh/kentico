CREATE TABLE [COM_Bundle] (
		[BundleID]     [int] NOT NULL,
		[SKUID]        [int] NOT NULL
) 
ALTER TABLE [COM_Bundle]
	ADD
	CONSTRAINT [PK_COM_Bundle]
	PRIMARY KEY
	CLUSTERED
	([BundleID], [SKUID])
	
ALTER TABLE [COM_Bundle]
	WITH CHECK
	ADD CONSTRAINT [FK_COM_Bundle_BundleID_COM_SKU]
	FOREIGN KEY ([BundleID]) REFERENCES [COM_SKU] ([SKUID])
ALTER TABLE [COM_Bundle]
	CHECK CONSTRAINT [FK_COM_Bundle_BundleID_COM_SKU]
ALTER TABLE [COM_Bundle]
	WITH CHECK
	ADD CONSTRAINT [FK_COM_Bundle_SKUID_COM_SKU]
	FOREIGN KEY ([SKUID]) REFERENCES [COM_SKU] ([SKUID])
ALTER TABLE [COM_Bundle]
	CHECK CONSTRAINT [FK_COM_Bundle_SKUID_COM_SKU]
