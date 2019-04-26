10 for n=2048 to 2143
20 print n;tab(10);peek(n); 
30 if peek(n)>31 then print tab(20);chr$(peek(n)):next n:end
40 print:next n
