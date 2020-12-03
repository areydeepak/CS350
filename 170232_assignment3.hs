quicksort1 :: (Ord a) => [a] -> [a]
quicksort1 [] = []
quicksort1 (x:xs) =
  let smallerSorted = quicksort1 [a | a <- xs, a <= x]
      biggerSorted = quicksort1 [a | a <- xs, a > x]
  in  smallerSorted ++ [x] ++ biggerSorted
  
  
  
  
 
uniq :: Eq a => [a] -> [a]
uniq [] = []
uniq (x:xs) = x : uniq (filter (/=x) xs)






neighbors :: (Ord a1, Ord a2, Num a1, Num a2) =>a1 -> a2 -> [(a1, a2)]
neighbors i j = lefttop ++ top ++ righttop ++ left ++ right ++ leftbot ++ bot ++ rightbot
                where 
                    right  = if((j+1)<9) then [(i,j+1)] else []                    
                    righttop  = if(i-1>=0 && j+1<9) then [(i-1,j+1)] else []
                    rightbot = if(i+1<9 && j+1<9) then [(i+1,j+1)] else []
                    left = if(j-1>=0) then [(i,j-1)] else []
                    lefttop = if(i-1>=0 && j-1>=0) then [(i-1,j-1)] else []
                    leftbot = if(i+1<9 && j-1>=0) then [(i+1,j-1)] else []
                    bot = if(i+1<9) then [(i+1,j)] else []
                    top = if(i-1>=0) then [(i-1,j)] else []
                    
                    
 
 
 
                    
                    
type Line      = String
type Paragraph = [String]
parify :: [Line] -> [Paragraph]
parify [] = []
parify ls 
  | null first = parify rest          
  | otherwise  = first : parify rest
  where first = takeWhile (/= "") ls 
        rest  = dropWhile (== "") . drop (length first) $ ls
singleParagraphCount :: Paragraph -> Int
singleParagraphCount = sum . map lineWordCount
lineWordCount :: Line -> Int
lineWordCount = length . words
wordsPerParagraph :: String -> [Int]
wordsPerParagraph = map (singleParagraphCount) . parify . lines







compose_multiple :: [b -> b] -> b -> b
compose_multiple [] val     = val
compose_multiple (f:fs) val = compose_multiple (init $ f:fs) $ (last $ f:fs) val







data BinaryTree a = Nil | Node a (BinaryTree a) (BinaryTree a) deriving Show

mapTree :: (a -> b) -> BinaryTree a -> BinaryTree b
mapTree f Nil = Nil
mapTree f (Node x n1 n2) = Node (f x) (mapTree f n1) (mapTree f n2)

foldTree :: (a -> b -> b -> b)->b -> BinaryTree a -> b
foldTree _ id Nil     = id
foldTree f id (Node x n1 n2) = f x (foldTree f id n1) (foldTree f id n2)





