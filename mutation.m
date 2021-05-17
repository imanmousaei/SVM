function child = mutation(child)
randC=makeOne(numel(child));
for i=1:numel(child)
    if rand>0.2
        child(i)=child(i);
    else
        child(i)=randC(i);
    end
end

end
