<h1>In-Group Favoritism</h1>

<h2>Introduction</h2>
In-group favoritism refers to a behavioral pattern, in which people favor actions, policies, and rules that favor their own in-group over those that favor out-group. This study seeks to analyze this phenomenon with data gathered via the <a href='http://en.wikipedia.org/wiki/General_Social_Survey' target='_blank'>General Social Survey (GSS)</a>, particularly with controversial issues based on race and sex: public's opinion on affirmative actions for blacks and women.

<h2>Methods</h2>
<h3>1. Tools</h3>
Microsoft Excel was used to scan the data and extract the column
names.

"Describe" and "Relate" functions in the <a href='https://www.statwing.com/' target='_blank'>Statwing software</a> were used to conduct the exploratory analysis. 

Lastly, the <a href='http://www.r-project.org/' target='_blank'>R programming language</a> was used for expository purposes and to ensure replication of work.

<h3>2. About the Data</h3>
Taken from Wikipedia on January 28, 2014:
<blockquote>
The General Social Survey (GSS) is a sociological survey used to collect data on demographic characteristics and attitudes of residents of the United States. The survey is conducted face-to-face with an in-person interview by the National Opinion Research Center at the University of Chicago, of adults (18+) in randomly selected households. The survey was conducted every year from 1972 to 1994 (except in 1979, 1981, and 1992). Since 1994, it has been conducted every other year. The survey takes about 90 minutes to administer. As of 2010 28 national samples with 55,087 respondents and 5,417 variables had been collected. The data collected about this survey includes both demographic information and respondent's opinions on matters ranging from government spending to the state of race relations to the existence and nature of God. 
</blockquote>

A smaller set of the complete GSS data was subsetted and stored as <a href='./data/data.RData' target='_blank'>data.RData</a>, which contained only the relevant column variables and rows needed for this analysis.

<h2>Results</h2>
<h3>1. Opinion on Housing Discrimination Law by Race</h3>
<strong>GSS survey question:</strong><br />
<blockquote>
Suppose there is a community-wide vote on the general housing issue. There are two possible laws to vote on: 
<ol type='a'>
	<li>One law says that a homeowner can decide for himself whom to sell his house to, even if he prefers not to sell to negroes/blacks/African-Americans.</li>
	<li>The second law says that a homeowner cannot refuse to sell to someone because of their race or color.</li>
</ol>
Which law would you vote for?
</blockquote>
<strong>GSS survey response:</strong>
<table>
	<tr>
		<th></th>
		<th>White</th>
		<th>Black</th>
		<th>Hispanic</th>
		<th>Asian</th>
		<th>Other</th>
	</tr>
	<tr>
		<th>Can't Discriminate</th>
		<td>2713</td>
		<td>603</td>
		<td>564</td>
		<td>131</td>
		<td>290</td>
	</tr>	
	<tr>
		<th>Don't Know</th>
		<td>25</td>
		<td>5</td>
		<td>9</td>
		<td>0</td>
		<td>1</td>
	</tr>	
	<tr>
		<th>Neither</th>
		<td>126</td>
		<td>37</td>
		<td>25</td>
		<td>7</td>
		<td>16</td>
	</tr>	
	<tr>
		<th>Owner Decides</th>
		<td>1282</td>
		<td>118</td>
		<td>137</td>
		<td>38</td>
		<td>90</td>
	</tr>	
</table>

<table>
	<tr>
		<th></th>
		<th>White</th>
		<th>Black</th>
		<th>Hispanic</th>
		<th>Asian</th>
		<th>Other</th>
	</tr>
	<tr>
		<th>Can't Discriminate</th>
		<td>65.4%</td>
		<td>79.0%</td>
		<td>76.7%</td>
		<td>74.4%</td>
		<td>73.0%</td>
	</tr>	
	<tr>
		<th>Don't Know</th>
		<td>0.6%</td>
		<td>0.7%</td>
		<td>1.2%</td>
		<td>0%</td>
		<td>0.3%</td>
	</tr>	
	<tr>
		<th>Neither</th>
		<td>3.0%</td>
		<td>4.8%</td>
		<td>3.4%</td>
		<td>4.0%</td>
		<td>4.0%</td>
	</tr>	
	<tr>
		<th>Owner Decides</th>
		<td>30.9%</td>
		<td>15.5%</td>
		<td>18.6%</td>
		<td>21.6%</td>
		<td>22.7%</td>
	</tr>	
</table>

<strong>Analysis:</strong><br />
While the majority of individuals in all ethinic groups believed that the home owners should not discriminate against blacks in home sales, a noticeably higher percentage of whites agreed with the discrimination law than did the blacks. 

To put things in perspective, the percentage of whites supporting the discrimination law was twice as high as the percentage for blacks.

It was interesting to see that the majority people in other ethnic groups (Hispanic, Asian, and other) all expressed support for no discrimination but not as strongly as the blacks.

<h3>2. Opinion on Affirmative Action for Blacks by Race I</h3>
<strong>GSS survey question:</strong><br />
<blockquote>
Some people say that because of past discrimination, blacks should be given preference in hiring and promotion. Others say that such preference in hiring and promotion of blacks is wrong because it discriminates against whites. What about your opinion?
</blockquote>

<strong>GSS survey response:</strong>
<table>
	<tr>
		<th></th>
		<th>White</th>
		<th>Black</th>
		<th>Hispanic</th>
		<th>Asian</th>
		<th>Other</th>
	</tr>
	<tr>
		<th>Strongly Support Preference for Blacks</th>
		<td>291</td>
		<td>318</td>
		<td>98</td>
		<td>25</td>
		<td>63</td>
	</tr>
	<tr>
		<th>Support Preference for Blacks</th>
		<td>318</td>
		<td>110</td>
		<td>65</td>
		<td>22</td>
		<td>40</td>
	</tr>
	<tr>
		<th>Don't Know</th>
		<td>191</td>
		<td>60</td>
		<td>61</td>
		<td>20</td>
		<td>22</td>
	</tr>
	<tr>
		<th>Oppose Preference for Blacks</th>
		<td>1430</td>
		<td>239</td>
		<td>290</td>
		<td>63</td>
		<td>110</td>
	</tr>
	<tr>
		<th>Strongly Oppose Preference for Blacks</th>
		<td>3145</td>
		<td>279</td>
		<td>337</td>
		<td>75</td>
		<td>236</td>
	</tr>
</table>

<table>
	<tr>
		<th></th>
		<th>White</th>
		<th>Black</th>
		<th>Hispanic</th>
		<th>Asian</th>
		<th>Other</th>
	</tr>
	<tr>
		<th>Strongly Support Preference for Blacks</th>
		<td>5.4%</td>
		<td>31.6%</td>
		<td>11.5%</td>
		<td>12.2%</td>
		<td>13.4%</td>
	</tr>
	<tr>
		<th>Support Preference for Blacks</th>
		<td>5.9%</td>
		<td>10.9%</td>
		<td>7.6%</td>
		<td>10.7%</td>
		<td>8.5%</td>
	</tr>
	<tr>
		<th>Don't Know</th>
		<td>3.6%</td>
		<td>6.0%</td>
		<td>7.2%</td>
		<td>9.8%</td>
		<td>4.7%</td>
	</tr>
	<tr>
		<th>Oppose Preference for Blacks</th>
		<td>26.6%</td>
		<td>23.8%</td>
		<td>34.1%</td>
		<td>30.7</td>
		<td>23.4%</td>
	</tr>
	<tr>
		<th>Strongly Oppose Preference for Blacks</th>
		<td>58.5%</td>
		<td>27.7%</td>
		<td>39.6%</td>
		<td>36.6%</td>
		<td>50.1%</td>
	</tr>
</table>

<strong>Analysis:</strong><br />
It was immediately clear that the majority of individuals who were white, Hispanic, Asian, or other ethnic group strongly opposed affirmative action and preferential treatments for blacks. 

Among blacks, however, the majority strongly supported affirmative action and preferential treatments for their own group.

<h3>3. Opinion on Affirmative Action for Blacks by Race II</h3>
<strong>GSS survey question:</strong><br />
<blockquote>
Irish, Italian, Jewish and many other minorities overcame prejudice and worked their way up. Blacks should do the same without special favors.
</blockquote>

<strong>GSS survey response:</strong>
<table>
	<tr>
		<th></th>
		<th>White</th>
		<th>Black</th>
		<th>Hispanic</th>
		<th>Asian</th>
		<th>Other</th>
	</tr>
	<tr>
		<th>Agree Strongly</th>
		<td>2464</td>
		<td>297</td>
		<td>362</td>
		<td>75</td>
		<td>197</td>
	</tr>
	<tr>
		<th>Agree Somewhat</th>
		<td>1556</td>
		<td>244</td>
		<td>249</td>
		<td>65</td>
		<td>113</td>
	</tr>
	<tr>
		<th>Don't Know</th>
		<td>47</td>
		<td>14</td>
		<td>20</td>
		<td>5</td>
		<td>4</td>
	</tr>
	<tr>
		<th>Neither Agree Nor Disagree</th>
		<td>674</td>
		<td>133</td>
		<td>123</td>
		<td>27</td>
		<td>65</td>
	</tr>
	<tr>
		<th>Disagree Somewhat</th>
		<td>436</td>
		<td>136</td>
		<td>62</td>
		<td>20</td>
		<td>57</td>
	</tr>
	<tr>
		<th>Disagree Strongly</th>
		<td>202</td>
		<td>187</td>
		<td>38</td>
		<td>14</td>
		<td>39</td>
	</tr>
</table>

<table>
	<tr>
		<th></th>
		<th>White</th>
		<th>Black</th>
		<th>Hispanic</th>
		<th>Asian</th>
		<th>Other</th>
	</tr>
	<tr>
		<th>Agree Strongly</th>
		<td>45.8%</td>
		<td>29.4%</td>
		<td>42.4%</td>
		<td>36.4%</td>
		<td>41.5%</td>
	</tr>
	<tr>
		<th>Agree Somewhat</th>
		<td>28.9%</td>
		<td>24.1%</td>
		<td>29.2%</td>
		<td>31.6%</td>
		<td>23.8%</td>
	</tr>
	<tr>
		<th>Don't Know</th>
		<td>0.9%</td>
		<td>1.4%</td>
		<td>2.3%</td>
		<td>2.4%</td>
		<td>0.8%</td>
	</tr>
	<tr>
		<th>Neither Agree Nor Disagree</th>
		<td>12.5%</td>
		<td>13.2%</td>
		<td>14.4%</td>
		<td>13.1%</td>
		<td>13.7%</td>
	</tr>
	<tr>
		<th>Disagree Somewhat</th>
		<td>8.1%</td>
		<td>13.5%</td>
		<td>7.3%</td>
		<td>9.7%</td>
		<td>12.0%</td>
	</tr>
	<tr>
		<th>Disagree Strongly</th>
		<td>3.8%</td>
		<td>18.5%</td>
		<td>4.4%</td>
		<td>6.8%</td>
		<td>8.2%</td>
	</tr>
</table>

<strong>Analysis:</strong><br />
The majority of individuals in all groups strongly agreed that blacks should overwhelm their difficulties and work their way up without special favors. However, blacks displayed the highest number of people who strongly disagreed to the statement (18.5%) than any other groups.

<h3>4. Opinion on Government Help for Blacks by Race</h3>
<strong>GSS survey question:</strong><br />
<blockquote>
Some people think that blacks/negroes/African-Americans have been discriminated against for so long that the government has a special obligation to help improve their living standards. Others believe that the government should not be giving special treatment to blacks/negroes/African-Americans. Where would you place yourself? 
<ul>
	<li>1 = Government should help blacks</li>
	<li>3 = Agree with both</li>
	<li>5 = No special treatment</li>
</ul>
</blockquote>

<strong>GSS survey response:</strong>
<table>
	<tr>
		<th></th>
		<th>White</th>
		<th>Black</th>
		<th>Hispanic</th>
		<th>Asian</th>
		<th>Other</th>
	</tr>	
	<tr>
		<th>1</th>
		<td>228</td>
		<td>306</td>
		<td>100</td>
		<td>16</td>
		<td>59</td>
	</tr>
	<tr>	
		<th>2</th>
		<td>378</td>
		<td>126</td>
		<td>64</td>
		<td>36</td>
		<td>42</td>
	</tr>	
	<tr>
		<th>3</th>
		<td>1552</td>
		<td>361</td>
		<td>310</td>
		<td>68</td>
		<td>160</td>
	</tr>
	<tr>	
		<th>4</th>
		<td>1182</td>
		<td>56</td>
		<td>108</td>
		<td>32</td>
		<td>82</td>
	</tr>
	<tr>
		<th>5</th>
		<td>1888</td>
		<td>84</td>
		<td>243</td>
		<td>39</td>
		<td>144</td>
	</tr>
</table>

<table>
	<tr>
		<th></th>
		<th>White</th>
		<th>Black</th>
		<th>Hispanic</th>
		<th>Asian</th>
		<th>Other</th>
	</tr>	
	<tr>
		<th>1</th>
		<td>4.4%</td>
		<td>32.8%</td>
		<td>12.1%</td>
		<td>8.4%</td>
		<td>12.1%</td>
	</tr>
	<tr>	
		<th>2</th>
		<td>7.2%</td>
		<td>13.5%</td>
		<td>7.8%</td>
		<td>18.8%</td>
		<td>8.6%</td>
	</tr>	
	<tr>
		<th>3</th>
		<td>29.7%</td>
		<td>38.7%</td>
		<td>37.6%</td>
		<td>35.6%</td>
		<td>23.9%</td>
	</tr>
	<tr>	
		<th>4</th>
		<td>22.6%</td>
		<td>6%</td>
		<td>13.1%</td>
		<td>16.8%</td>
		<td>16.8%</td>
	</tr>
	<tr>
		<th>5</th>
		<td>36.1%</td>
		<td>9%</td>
		<td>29.5%</td>
		<td>20.4%</td>
		<td>29.6%</td>
	</tr>
</table>

<strong>Analysis:</strong><br />
The ethnic group with the lowest percentage of people who strongly agreed that the government has a special obligation to help blacks was the whites. 

Among whites, the highest percentage of individuals (36.1%) strongly believed that there should be no special treatment for blacks.

Among all other ethnic groups (Black, Hispanic, Asian, and Other), the majority of individuals placed themselves in the middle by agreeing with both sides of the argument.

<h3>5. Opinion on Affirmative Action for Women by Gender I</h3>
<strong>GSS survey question:</strong><br />
<blockquote>
Some people say that because of past discrimination, women should be given preference in hiring and promotion. Others say that such preference in hiring and promotion of women is wrong because it discriminates against men. What about you opinion about preferring women?
</blockquote>

<strong>GSS survey response:</strong><br />
<table>
	<tr>
		<th></th>
		<th>Female</th>
		<th>Male</th>
	</tr>
	<tr>
		<th>Strongly For</th>
		<td>610</td>
		<td>406</td>
	</tr>
	<tr>
		<th>For</th>
		<td>277</td>
		<td>258</td>
	</tr>
	<tr>
		<th>Don't Know</th>
		<td>114</td>
		<td>116</td>
	</tr>
	<tr>
		<th>Against</th>
		<td>726</td>
		<td>662</td>
	</tr>
	<tr>
		<th>Strongly Against</th>
		<td>961</td>
		<td>1111</td>
	</tr>
</table>

<table>
	<tr>
		<th></th>
		<th>Female</th>
		<th>Male</th>
	</tr>
	<tr>
		<th>Strongly For</th>
		<td>22.7%</td>
		<td>15.9%</td>
	</tr>
	<tr>
		<th>For</th>
		<td>10.3%</td>
		<td>10.1%</td>
	</tr>
	<tr>
		<th>Don't Know</th>
		<td>4.2%</td>
		<td>4.5%</td>
	</tr>
	<tr>
		<th>Against</th>
		<td>27.0%</td>
		<td>25.9%</td>
	</tr>
	<tr>
		<th>Strongly Against</th>
		<td>35.8%</td>
		<td>43.5%</td>
	</tr>
</table>

<strong>Analysis:</strong><br />
Both among men and women, the majority of individuals strongly disagreed against giving women preferential treatment in hiring and promotion. However, a notably higher percentage of men strongly disagreed (43.5%) than did women (35.8%). 

There was also a higher percentage of women (22.7%) who strongly agreed that women should be given preferential treatment than did men (15.9%).

<h3>6. Opinion on Affirmative Action for Women by Gender II</h3>
<strong>GSS survey question:</strong><br />
<blockquote>
Because of past discrimination, employers should make special efforts to hire and promote qualified women.
</blockquote>

<strong>GSS survey response:</strong>
<table>
	<tr>
		<th></th>
		<th>Female</th>
		<th>Male</th>
	</tr>
	<tr>
		<th>Strongly Agree</th>
		<td>637</td>
		<td>338</td>
	</tr>
	<tr>
		<th>Agree</th>
		<td>1275</td>
		<td>1213</td>
	</tr>
	<tr>
		<th>Don't Know</th>
		<td>22</td>
		<td>22</td>
	</tr>
	<tr>
		<th>Neither Agree Nor Disagree</th>
		<td>335</td>
		<td>316</td>
	</tr>
	<tr>
		<th>Disagree</th>
		<td>483</td>
		<td>696</td>
	</tr>
	<tr>
		<th>Strongly Disagree</th>
		<td>84</td>
		<td>169</td>
	</tr>
</table>

<table>
	<tr>
		<th></th>
		<th>Female</th>
		<th>Male</th>
	</tr>
	<tr>
		<th>Strongly Agree</th>
		<td>22.5%</td>
		<td>12.3%</td>
	</tr>
	<tr>
		<th>Agree</th>
		<td>45.0%</td>
		<td>44.0%</td>
	</tr>
	<tr>
		<th>Don't Know</th>
		<td>0.8%</td>
		<td>0.8%</td>
	</tr>
	<tr>
		<th>Neither Agree Nor Disagree</th>
		<td>11.8%</td>
		<td>11.5%</td>
	</tr>
	<tr>
		<th>Disagree</th>
		<td>17.0%</td>
		<td>25.3%</td>
	</tr>
	<tr>
		<th>Strongly Disagree</th>
		<td>3.0%</td>
		<td>6.1%</td>
	</tr>
</table>

<strong>Analysis:</strong><br />
The percentage of women who strongly agreed that employers should make special efforts to hire and promote qualified women (22.5%) was almost twice as that of men (12.3%). 

There was more than twice the percentage of men (6.1%) who strongly disagreed with the idea that employers should make special efforts to hire and promote women than among women (3.0%).

<h3>7. Perceived Job Preference for Women by Gender</h3>
<strong>GSS survey question:</strong><br />
<blockquote>
What do you think the chances are these days that a man won't get a job or a promotion while an equally or less qualified woman gets one instead?
</blockquote>

<strong>GSS survey response:</strong>
<table>
	<tr>
		<th></th>
		<th>Female</th>
		<th>Male</th>
	</tr>
	<tr>
		<th>Very Likely</th>
		<td>291</td>
		<td>334</td>
	</tr>
	<tr>
		<th>Somewhat Likely</th>
		<td>862</td>
		<td>1029</td>
	</tr>
	<tr>
		<th>Don't Know</th>
		<td>93</td>
		<td>84</td>
	</tr>
	<tr>
		<th>Somewhat Unlikely</th>
		<td>800</td>
		<td>745</td>
	</tr>
	<tr>
		<th>Very Unlikely</th>
		<td>526</td>
		<td>239</td>
	</tr>
</table>

<table>
	<tr>
		<th></th>
		<th>Female</th>
		<th>Male</th>
	</tr>
	<tr>
		<th>Very Likely</th>
		<td>11.3%</td>
		<td>13.7%</td>
	</tr>
	<tr>
		<th>Somewhat Likely</th>
		<td>33.5%</td>
		<td>42.3%</td>
	</tr>
	<tr>
		<th>Don't Know</th>
		<td>3.6%</td>
		<td>3.5%</td>
	</tr>
	<tr>
		<th>Somewhat Unlikely</th>
		<td>31.1%</td>
		<td>30.6%</td>
	</tr>
	<tr>
		<th>Very Unlikely</th>
		<td>20.5%</td>
		<td>9.8%</td>
	</tr>
</table>

<strong>Analysis:</strong><br />
A notably higher percentage of men (combined 56%) believed that a man won't get a job or promotion while an equally or less qualified woman gets one insteadcompared to women (44.8%). 

In addition, the percentage of women who expressed that such scenario was very unlikely (20.5%) was more than double from the percentage for men (9.8%).

<h3>8. Perceived Job Preference for Men by Gender</h3>
<strong>GSS survey question:</strong><br />
<blockquote>
What do you think the chances are these days that a woman won't get a job or promotion while an equally or less qualified man gets one instead?
</blockquote>

<strong>GSS survey response:</strong>
<table>
	<tr>
		<th></th>
		<th>Female</th>
		<th>Male</th>
	</tr>
	<tr>
		<th>Very Likely</th>
		<td>689</td>
		<td>431</td>
	</tr>
	<tr>
		<th>Somewhat Likely</th>
		<td>1146</td>
		<td>11389</td>
	</tr>
	<tr>
		<th>Don't Know</th>
		<td>80</td>
		<td>89</td>
	</tr>
	<tr>
		<th>Somewhat Unlikely</th>
		<td>390</td>
		<td>553</td>
	</tr>
	<tr>
		<th>Very Unlikely</th>
		<td>174</td>
		<td>240</td>
	</tr>
</table>

<table>
	<tr>
		<th></th>
		<th>Female</th>
		<th>Male</th>
	</tr>
	<tr>
		<th>Very Likely</th>
		<td>27.8%</td>
		<td>17.6%</td>
	</tr>
	<tr>
		<th>Somewhat Likely</th>
		<td>46.2%</td>
		<td>46.4%</td>
	</tr>
	<tr>
		<th>Don't Know</th>
		<td>3.2%</td>
		<td>3.6%</td>
	</tr>
	<tr>
		<th>Somewhat Unlikely</th>
		<td>15.7%</td>
		<td>22.6%</td>
	</tr>
	<tr>
		<th>Very Unlikely</th>
		<td>7.0%</td>
		<td>9.8%</td>
	</tr>
</table>

<strong>Analysis:</strong><br />
Roughly the same percentage of individuals among men (46.4%) and women (46.2%) expressed their belief that it was somewhat likely that a woman won't get a job or promotion while an equally or less qualified man gets one instead, which formed the majority for both groups. 

However, a much higher percentage of women (27.8%) believed that such scenario was very likely than did men (17.6%).

<h2>Conclusion</h2>
In short, it was evident that people not only favored actions and policies that are beneficial to their own in-group, but they also tended to believe that they are placed in more disadvantageous situations (in case of perceived gender preference in employment between men and women). 

