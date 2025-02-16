function RPeaks=locateRPeaks(threshold,indicator,signal)
         
         RPeaks=[];
         
         i=1;
         while i<length(signal)
             if indicator(i)>threshold
                max=signal(i);
                j=i+1;
                while j~=-1
                    if signal(j)>max
                        max=signal(j);
                        hold=j;
                    end
                    if indicator(j+1)<threshold
                        RPeaks=[RPeaks hold];
                        i=j+1;
                        j=-2;
                    end
                    j=j+1;
                end
             end
             i=i+1;
         end

end