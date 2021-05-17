function child = crossover(pr1, pr2)

% N = round(numel(pr1)/2);
% child=pr2;
% child(1:N)= pr1(1:N);

for i=1:numel(pr1)
    if rand>0.5
        child(i)=pr1(i);
    else
        child(i)=pr2(i);
    end
end

end