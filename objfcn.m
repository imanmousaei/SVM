function fitness=objfcn(chromosome,x,y,lambda)
   w = chromosome(1:end-1);
   b = chromosome(end);
   n = size(x,1);
   
   cost = 0;
   for i=1:n
       cost = cost + max(0,1-y(i)*(dot(w,x(i)) + b));
   end
   cost = cost/n + lambda * norm(w)^2;
   fitness = -cost
end