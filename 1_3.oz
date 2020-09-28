declare Zs
proc {Merge Xs Ys Zs}
   case Xs#Ys
   of nil#Ys then Zs=Ys
   [] Xs#nil then Zs=Xs
   [] (X|Xr) # (Y|Yr) then 
      if X=<Y then Zr in 
         Zs = X|Zr
         {Merge Xr Ys Zr}
      else Zr in 
         Zs = Y|Zr
         {Merge Xs Yr Zr}
      end 
   end 
end
{Browse {Merge [1 3 5] [2 4 6] }}