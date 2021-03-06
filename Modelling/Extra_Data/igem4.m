%Time (Hours)	[2.5	3.5	4.5	5.5	6.5	7.5	8.5	9.5	10.5	11.5	12.5	13.5	14.5	15.5	16.5	17.5	18.5	19.5];

I4	= [3.040201005	3.849287169	5.140651801	7.51552795	10.42356241	14.17833554	18.200492	22.36666667	25.93179433	29.7862069	32.47865577	33.89171452	35.53903904	36.84556787	37.51590331	37.4373908	37.68329718	38.03446528];
I5	= [3.065326633	4.00407332	5.557461407	8.26863354	11.5483871	15.75693527	20.04674047	24.48275862	28.15739769	31.76748768	34.39146231	35.84659557	37.42042042	38.46260388	39.07888041	38.7396622	38.93709328	39.03547897];
I6	= [3.092964824	4.014256619	5.574614065	8.204968944	11.43478261	15.665786	19.95448954	24.44252874	28.12172088	31.7862069	34.34423252	35.79245283	37.41741742	38.50623269	39.18193384	38.87536401	39.05694143	39.21186011];
I7	= [3.128140704	4.073319756	5.682675815	8.316770186	11.50631136	15.63672391	19.90528905	24.44022989	28.20986359	31.99802956	34.55676658	35.7588187	37.43243243	38.46883657	39.13167939	38.77984857	38.90238612	39.0430816];
I8	= [3.140703518	4.205702648	5.97084048	8.793478261	12.12622721	16.31439894	20.65436654	25.17931034	28.7019937	32.29359606	34.72570391	36.08613618	37.70570571	38.69598338	39.22964377	38.85148515	38.90075922	39.02128738];

t = linspace(0,50);
t2 = linspace(0,17,18);

%Boundary of 1 in b, c, d
%m(0) = 0
%p(0) = 3.09

a = 4.146;
b = 0.2482;
c = 0.6564;
d = 0.2563;

%pt = (a.*c.*(-b.*exp(-d*t)+d.*(exp(-b.*t)-1)+b)+b.*d.*(3.09.*b-3.09.*d).*exp(-d*t))./b.*d.*(b-d);
%pt = (a*c*(-b*exp(-d*t)+d*(exp(-b*t)-1)+b)+b*d*(3.09*b-3.09*d).*exp(-d*t))./b*d*(b-d);
pt = exp(-b.*t-d.*t).*(a.*b.*c.*exp(b.*t+d.*t)-a.*c.*d.*exp(b.*t+d.*t)-a.*b.*c.*exp(b.*t)+a.*c.*d.*exp(d.*t)+b.^2.*d.*exp(b.*t)-b.*d.^2.*exp(b.*t))./(b.*d.*(b-d));

hold on
%plot(t2,I4,'x');
plot(t,pt, 'r');

%a = 4.663;
%b = 0.2664;
%c = 0.6799;
%d = 0.2744;

%pt = exp(-b.*t-d.*t).*(a.*b.*c.*exp(b.*t+d.*t)-a.*c.*d.*exp(b.*t+d.*t)-a.*b.*c.*exp(b.*t)+a.*c.*d.*exp(d.*t)+b.^2.*d.*exp(b.*t)-b.*d.^2.*exp(b.*t))./(b.*d.*(b-d));

%plot(t,pt,'b');

%a = 4.697;
%b = 0.2642;
%c = 0.6668;
%d = 0.2719;

%pt = exp(-b.*t-d.*t).*(a.*b.*c.*exp(b.*t+d.*t)-a.*c.*d.*exp(b.*t+d.*t)-a.*b.*c.*exp(b.*t)+a.*c.*d.*exp(d.*t)+b.^2.*d.*exp(b.*t)-b.*d.^2.*exp(b.*t))./(b.*d.*(b-d));

%plot(t,pt);

%a = 4.311;
%b = 0.2665;
%c = 0.7346;
%d = 0.2738;

%pt = exp(-b.*t-d.*t).*(a.*b.*c.*exp(b.*t+d.*t)-a.*c.*d.*exp(b.*t+d.*t)-a.*b.*c.*exp(b.*t)+a.*c.*d.*exp(d.*t)+b.^2.*d.*exp(b.*t)-b.*d.^2.*exp(b.*t))./(b.*d.*(b-d));

%plot(t,pt);

%a = 4.528;
%b = 0.2777;
%c = 0.7449;
%d = 0.2827;

%pt = exp(-b.*t-d.*t).*(a.*b.*c.*exp(b.*t+d.*t)-a.*c.*d.*exp(b.*t+d.*t)-a.*b.*c.*exp(b.*t)+a.*c.*d.*exp(d.*t)+b.^2.*d.*exp(b.*t)-b.*d.^2.*exp(b.*t))./(b.*d.*(b-d));

ylabel('F/Fo')
xlabel('Time (hours)')
%legend('IPTG 400 mM')