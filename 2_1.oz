declare
fun {ZipWith L1 L2 P}
   case L1 of nil then nil
      case L2 of nil then nil
	 [] X|Xs then {P X L2.1} | {ZipWith P Xs L2.2}
      end
   end
end
