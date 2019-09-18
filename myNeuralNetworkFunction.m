function [Y,Xf,Af] = myNeuralNetworkFunction(X,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 22-Mar-2018 20:38:39.
%
% [Y] = myNeuralNetworkFunction(X,~,~) takes these arguments:
%
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 12xQ matrix, input #1 at timestep ts.
%
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 12xQ matrix, output #1 at timestep ts.
%
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.keep = [1 2 3 4 5 6 7 8 9 10 11];
x1_step2.xoffset = [0.1;0.05;0.15;0.2;0.1;0.25;0.15;0.1;0.15;0.05;0];
x1_step2.gain = [2.85714285714286;2.5;2.66666666666667;2.85714285714286;2.85714285714286;3.63636363636364;3.07692307692308;2.66666666666667;2.66666666666667;40;40];
x1_step2.ymin = -1;

% Layer 1
b1 = [1.7172007306945813;-1.1513038739158161;-0.91522993716866174;0.38206215572536462;-0.088404387878168095;-0.46875900195248499;-0.53824029579562493;-0.78003244270335614;-1.1853389535027588;-1.762409198735716];
IW1_1 = [-0.82367060956865978 0.4192626372964639 1.0727028683046225 -0.16139697692741123 0.65199297727453309 -0.043099966685329887 -0.046261324138564569 0.035748234401851764 0.27861488029933307 0.18430292577958765 0.70055364425795152;0.32446767480330796 -0.60718421961295788 0.54959502947299899 -0.8341346526007607 -0.76447348222145162 -0.59297105832845931 0.18803100876159456 0.16819962809186578 0.64023481117931491 0.70604668601066989 -0.30410180733297454;0.081109767325918528 -0.4322535474500796 -0.90703522362175237 0.079504872626708842 -0.54347235023202978 -0.10301613085854402 0.46173037131221062 0.3107705734941148 -0.12512830005970649 -0.94254024082847243 -0.57864601247596736;-0.93938048045839917 -0.54683505532766286 -0.21947397019217901 -0.083305268862541387 0.0031017560397510191 -0.5062958296633262 -0.58542304749218665 0.76932888800312837 -0.61035528069161626 -0.58502337176256225 -0.42626887963045201;0.6167436670077816 0.60832989658893755 -0.18249216047094374 -0.33946862036418912 0.86813141010064188 0.57558474542909543 0.55243526604919846 -0.58909067300532447 -0.58711808279330779 0.17681000639113195 0.38333975365234646;-0.62130661280778843 -0.40124135738943689 -0.036690140389506076 0.044719431694274323 0.70012942076681606 -0.1345797051843049 -0.69904292414848446 0.85549061922429748 0.4893179892135498 0.66045146022264778 0.41502014417418598;-0.67982992387307428 0.47024868621096849 -0.67692341967516179 0.053776486137123783 0.085555171241298661 1.1226022200977319 -0.31708527915557966 0.20816484397748686 0.79074805881219656 0.38103529672913317 -0.013481007442482318;-0.81872777980462264 0.22592800597574575 0.17606968570631437 -0.035566516521984989 -0.45031994460709879 -1.1780692228315093 -0.69302519084996039 0.40417148291934807 0.39742533549253106 -0.41720251286765453 0.1663662298145836;-0.3296621550533364 0.49650951912259467 0.18132999098068675 0.51591961160514899 -0.74590768081423386 0.5553480609531255 0.76767943572149711 -0.47015706247341071 -0.2381962168861449 -0.69237174719687122 -0.4184974964457096;-0.48565728278654702 -0.69520500098170013 0.19129515793713486 0.34935379446718889 0.41096862012305013 0.21445811598291231 -0.80713421921468942 0.055795041588710056 0.79166415127360579 0.67990786514011559 0.39184488887210012];

% Layer 2
b2 = [-0.70134927638585443;-0.034655890681781765;0.46314569035547715;-0.32841047309993499;-0.065976613125121375;0.88217608539893089;-0.93261721634176054;-0.60811027163605913;-0.11904819044778758];
LW2_1 = [0.40750006033845132 -0.45007641078246885 0.69754470570450322 -0.3604892457215646 -0.23993924319239962 0.50914656014213167 -0.57865908687139211 -0.39340586577193687 -0.55478687929984094 0.72090814821670191;-0.21520169393255706 0.43433835697517653 0.49587495609070587 0.74022442741371086 0.5789314283692566 -0.21762732212982827 0.63893957863448203 -0.91391653010295515 -0.63064502822646451 0.2057705185672577;-0.5046223142510976 -0.6440554722397116 0.15220549161200253 -0.44941706704401313 0.015392683509502708 0.063471978029722612 0.60755270329922517 0.83017177964136568 -0.53858341296823709 0.29257918147601525;0.03140482168291292 -0.62472517671362704 0.16471474650105128 -0.27363438240690424 0.63149042068504624 1.223177361353649 -1.0167786899106019 0.41312642369431074 0.65334349016192883 -0.60583451048838133;-0.050913891092636554 -0.76982344284308646 0.35206798804000283 -0.74860087831679689 -0.59219299329754849 -0.73560528552514315 -1.228355216577498 0.20645815506926296 0.59712073195790683 0.079149930320936368;0.38209359675515708 -0.77370056800624898 0.053977928789315288 0.79879031613112361 0.037552358187032064 -0.9751564087283856 -0.73731594935074274 0.25363369746250597 -0.72040326652483855 0.77212440674123528;0.71038430172135958 0.44091165729782411 -0.60897893749968568 -0.69106094656506267 -0.60836246614325651 -0.42443260666985194 0.56066695963381197 0.11499472413981406 -0.23830610501892532 0.51281068827381115;0.61265252247428292 -0.68860789067192907 0.58020713268176261 -0.55552166757005228 1.0752607838994575 0.80935327141511726 -0.7052879293962665 -0.4162334077870975 0.40509260682326098 0.0029267372426914351;0.17169021581212152 1.1053934126738802 -1.0965944058851598 0.78900928846472362 0.098093955611449013 0.96614754482509868 -0.38731646700705291 0.51267961860648925 -0.50610666268657578 1.1538235972319173];

% Output 1
y1_step2.ymin = -1;
y1_step2.gain = [2;2;2;2;2;2;2;2;2];
y1_step2.xoffset = [0;0;0;0;0;0;0;0;0];
y1_step1.xrows = 12;
y1_step1.keep = [4 5 6 7 8 9 10 11 12];
y1_step1.remove = [1 2 3];
y1_step1.constants = [0;0;0];

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX, X = {X}; end;

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
    Q = size(X{1},2); % samples/series
else
    Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS
    
    % Input 1
    temp = removeconstantrows_apply(X{1,ts},x1_step1);
    Xp1 = mapminmax_apply(temp,x1_step2);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = repmat(b2,1,Q) + LW2_1*a1;
    
    % Output 1
    temp = mapminmax_reverse(a2,y1_step2);
    Y{1,ts} = removeconstantrows_reverse(temp,y1_step1);
end

% Final Delay States
Xf = cell(1,0);
Af = cell(2,0);

% Format Output Arguments
if ~isCellX, Y = cell2mat(Y); end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Remove Constants Input Processing Function
function y = removeconstantrows_apply(x,settings)
y = x(settings.keep,:);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
x = bsxfun(@minus,y,settings.ymin);
x = bsxfun(@rdivide,x,settings.gain);
x = bsxfun(@plus,x,settings.xoffset);
end

% Remove Constants Output Reverse-Processing Function
function x = removeconstantrows_reverse(y,settings)
Q = size(y,2);
x = nan(settings.xrows,Q,'like',y);
x(settings.keep,:) = y;
x(settings.remove,:) = repmat(settings.constants,1,Q);
end