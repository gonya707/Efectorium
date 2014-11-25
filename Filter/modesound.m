function res=modesound(x,T)
%
%   res=modasound(x,T)
%
%   x=vector MONO de sonido
%   T= longitud de la plantilla (se vuelve impar sola y esas cosas, 
%esta blindado)

    A=waitbar(0,'procesando...');

    S=length(x);
    res=zeros(S,1);
    
    %es impar?
    if (rem(round(T),2)~=1)
        T=round(T)+1;
    end
    
    %marqueado
    marco=floor(T/2);
    x=[zeros(1,marco) x' zeros(1,marco)]';
    
    %posiciones
    ini=marco+1;
    fin=marco+S;
  
    for i=ini:fin
        segmento=x(i-marco:i+marco);
        res(i-marco)=mode(segmento); 
        waitbar((i-marco)/fin,A);
    end
    
    res=normalizacion(res);
   
end