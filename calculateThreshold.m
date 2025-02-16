function threshold=calculateThreshold(signal)
         
         signalOfPeaks=signal;
         for i = 2:length(signal)-1
             if ~(signal(i)>=signal(i+1) && signal(i)>=signal(i-1))
                signalOfPeaks(i) = 0; 
             end 
         end  
         
         sorted = sort(signalOfPeaks,'descend');

         doubleDifference = zeros(1,length(signalOfPeaks));
         for i=1:length(sorted)-3
             doubleDifference(i+1) = 2*sorted(i+1)-sorted(i)-sorted(i+2);
         end 

%          [argvalue,argmax]=find(doubleDifference==max(doubleDifference));
         argmax=find(doubleDifference==max(doubleDifference));
         threshold=mean(sorted(argmax-1:argmax+1));
         
end
