 All files consist a working MS-ACCESS database. Repo is an answer to stackoverflow question 
 
        How to create a pricelist of Products, that are formed from multiple “MicroProducts”? 
   [https://stackoverflow.com/q/68375002](https://stackoverflow.com/q/68375002)
   
there are no accdb compiled database file. You need manually reproduce on template database using bas modules. 
Or it can be easy way be imported with related tools like  https://github.com/joyfullservice/msaccess-vcs-integration  

When ms-access start, autoexec macros open a UI Form ```frmRealProducts``` and start query for create a new table with RealProduct prices. Then enter data for Articles and subarticles products. A report button on a form let view a pricelist for each composited article and sub-articles prices.

