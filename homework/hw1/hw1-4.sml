fun zip([],_) = []
    | zip(_,[]) = []
    | zip(s::SL,x::IL) = (s,x)::zip(SL,IL);

fun unzip([]) = ([],[])
    | unzip((s,x)::L) =
        let
            val (SL,IL) = unzip(L)
        in
            (s::SL,x::IL)
        end;
