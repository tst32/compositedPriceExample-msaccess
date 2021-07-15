CREATE TABLE [MicroProducts] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [MicroProductName] VARCHAR (255),
  [MicroProductPrice] LONG ,
  [RealProductID] LONG 
)
