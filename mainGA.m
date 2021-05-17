function best = mainGA(N, x, y, maxNum, lambda)
    %% initial population:
    maxGen=100;
    popsize=50;
    ER=0.1;
    NN= round(0.5 * popsize);

    for i=1:popsize
        chromosome{i}=makeOne(N, maxNum);
    end
    %% Optimization:
    for generation=1:maxGen
        for i=1:popsize
            fitness(i)=objfcn(chromosome{i},x,y,lambda);
        end
        prob= fitness / sum(fitness);
        [val,idx]=sort(fitness);
        
        
        % plot
        disp(['best fitness=', num2str(val(end))]);
        plot(generation,val(end),'k.');
        hold on
        pause(0.0000001)
        
        
        % selection:
        for i=1:NN
            newpop{i}= chromosome{idx(end-i +1)};
        end
        for i=NN+1: popsize
            pid1=randsrc(1,1, [1:popsize ; prob]);
            pid2=randsrc(1,1, [1:popsize ; prob]);
            parent1=chromosome{pid1};
            parent2=chromosome{pid2};
        % crossover/ breed
            child=crossover(parent1,parent2);
        % mutation:
            if rand>0.5
              child=mutation(child);
            end
        % replacement:
            newpop{i}=child;
        end
        chromosome=newpop;
    end
    best=parent1
    obj=objfcn(best)
end