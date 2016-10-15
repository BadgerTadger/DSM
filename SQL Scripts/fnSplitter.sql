CREATE Function fnSplitter (@IDs Varchar(1000) )  
Returns @Tbl_IDs Table  (ID Int)  As  

Begin 
 -- Append comma
 Set @IDs =  @IDs + ',' 
 -- Indexes to keep the position of searching
 Declare @Pos1 Int
 Declare @pos2 Int
 
 -- Start from first character 
 Set @Pos1=1
 Set @Pos2=1

 While @Pos1<Len(@IDs)
 Begin
  Set @Pos1 = CharIndex(',',@IDs,@Pos1)
  Insert @Tbl_IDs Select  Cast(Substring(@IDs,@Pos2,@Pos1-@Pos2) As Int)
  -- Go to next non comma character
  Set @Pos2=@Pos1+1
  -- Search from the next charcater
  Set @Pos1 = @Pos1+1
 End 
 Return
End

