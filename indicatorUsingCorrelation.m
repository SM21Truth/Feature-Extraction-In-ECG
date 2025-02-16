function indicator = indicatorUsingCorrelation(signal)

         signal       = signal';
         kernel       = load( 'GaussianKernel.txt');
         meanOfKernel = mean(kernel);
         kernel       = kernel-meanOfKernel;
         a            = length(kernel);
         indicator    = zeros(1, length(signal));
         
         for i=1:length(signal)-a+1
             for j=1:a
                 meanOfSignal = mean(signal(i:i+a-1));
                 cor          = sum(kernel.*(signal(i:i+a-1)-meanOfSignal)); % Correlation with Gaussian Pulse
                 if cor>0
                    indicator(i+(a-1)/2) = cor^2;
                 end  
             end 
         end 
        indicator = indicator./max(indicator); % Normalization
end
