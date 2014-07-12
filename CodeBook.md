2014-07-12  
R build 9200 Windows x86-64

The original dataset, "Human Activity Recognition Using Smartphones Data
Set" can be obtained here
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Raw Data
--------

<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Sat Jul 12 12:30:40 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> 
Variables
</TH>  </TR>
  <TR> <TD align="right"> 
1
</TD> <TD> 
tBodyAcc-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
2
</TD> <TD> 
tBodyAcc-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
3
</TD> <TD> 
tBodyAcc-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
4
</TD> <TD> 
tBodyAcc-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
5
</TD> <TD> 
tBodyAcc-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
6
</TD> <TD> 
tBodyAcc-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
7
</TD> <TD> 
tBodyAcc-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
8
</TD> <TD> 
tBodyAcc-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
9
</TD> <TD> 
tBodyAcc-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
10
</TD> <TD> 
tBodyAcc-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
11
</TD> <TD> 
tBodyAcc-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
12
</TD> <TD> 
tBodyAcc-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
13
</TD> <TD> 
tBodyAcc-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
14
</TD> <TD> 
tBodyAcc-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
15
</TD> <TD> 
tBodyAcc-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
16
</TD> <TD> 
tBodyAcc-sma()
</TD> </TR>
  <TR> <TD align="right"> 
17
</TD> <TD> 
tBodyAcc-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
18
</TD> <TD> 
tBodyAcc-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
19
</TD> <TD> 
tBodyAcc-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
20
</TD> <TD> 
tBodyAcc-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
21
</TD> <TD> 
tBodyAcc-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
22
</TD> <TD> 
tBodyAcc-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
23
</TD> <TD> 
tBodyAcc-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
24
</TD> <TD> 
tBodyAcc-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
25
</TD> <TD> 
tBodyAcc-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
26
</TD> <TD> 
tBodyAcc-arCoeff()-X,1
</TD> </TR>
  <TR> <TD align="right"> 
27
</TD> <TD> 
tBodyAcc-arCoeff()-X,2
</TD> </TR>
  <TR> <TD align="right"> 
28
</TD> <TD> 
tBodyAcc-arCoeff()-X,3
</TD> </TR>
  <TR> <TD align="right"> 
29
</TD> <TD> 
tBodyAcc-arCoeff()-X,4
</TD> </TR>
  <TR> <TD align="right"> 
30
</TD> <TD> 
tBodyAcc-arCoeff()-Y,1
</TD> </TR>
  <TR> <TD align="right"> 
31
</TD> <TD> 
tBodyAcc-arCoeff()-Y,2
</TD> </TR>
  <TR> <TD align="right"> 
32
</TD> <TD> 
tBodyAcc-arCoeff()-Y,3
</TD> </TR>
  <TR> <TD align="right"> 
33
</TD> <TD> 
tBodyAcc-arCoeff()-Y,4
</TD> </TR>
  <TR> <TD align="right"> 
34
</TD> <TD> 
tBodyAcc-arCoeff()-Z,1
</TD> </TR>
  <TR> <TD align="right"> 
35
</TD> <TD> 
tBodyAcc-arCoeff()-Z,2
</TD> </TR>
  <TR> <TD align="right"> 
36
</TD> <TD> 
tBodyAcc-arCoeff()-Z,3
</TD> </TR>
  <TR> <TD align="right"> 
37
</TD> <TD> 
tBodyAcc-arCoeff()-Z,4
</TD> </TR>
  <TR> <TD align="right"> 
38
</TD> <TD> 
tBodyAcc-correlation()-X,Y
</TD> </TR>
  <TR> <TD align="right"> 
39
</TD> <TD> 
tBodyAcc-correlation()-X,Z
</TD> </TR>
  <TR> <TD align="right"> 
40
</TD> <TD> 
tBodyAcc-correlation()-Y,Z
</TD> </TR>
  <TR> <TD align="right"> 
41
</TD> <TD> 
tGravityAcc-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
42
</TD> <TD> 
tGravityAcc-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
43
</TD> <TD> 
tGravityAcc-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
44
</TD> <TD> 
tGravityAcc-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
45
</TD> <TD> 
tGravityAcc-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
46
</TD> <TD> 
tGravityAcc-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
47
</TD> <TD> 
tGravityAcc-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
48
</TD> <TD> 
tGravityAcc-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
49
</TD> <TD> 
tGravityAcc-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
50
</TD> <TD> 
tGravityAcc-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
51
</TD> <TD> 
tGravityAcc-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
52
</TD> <TD> 
tGravityAcc-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
53
</TD> <TD> 
tGravityAcc-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
54
</TD> <TD> 
tGravityAcc-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
55
</TD> <TD> 
tGravityAcc-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
56
</TD> <TD> 
tGravityAcc-sma()
</TD> </TR>
  <TR> <TD align="right"> 
57
</TD> <TD> 
tGravityAcc-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
58
</TD> <TD> 
tGravityAcc-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
59
</TD> <TD> 
tGravityAcc-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
60
</TD> <TD> 
tGravityAcc-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
61
</TD> <TD> 
tGravityAcc-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
62
</TD> <TD> 
tGravityAcc-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
63
</TD> <TD> 
tGravityAcc-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
64
</TD> <TD> 
tGravityAcc-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
65
</TD> <TD> 
tGravityAcc-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
66
</TD> <TD> 
tGravityAcc-arCoeff()-X,1
</TD> </TR>
  <TR> <TD align="right"> 
67
</TD> <TD> 
tGravityAcc-arCoeff()-X,2
</TD> </TR>
  <TR> <TD align="right"> 
68
</TD> <TD> 
tGravityAcc-arCoeff()-X,3
</TD> </TR>
  <TR> <TD align="right"> 
69
</TD> <TD> 
tGravityAcc-arCoeff()-X,4
</TD> </TR>
  <TR> <TD align="right"> 
70
</TD> <TD> 
tGravityAcc-arCoeff()-Y,1
</TD> </TR>
  <TR> <TD align="right"> 
71
</TD> <TD> 
tGravityAcc-arCoeff()-Y,2
</TD> </TR>
  <TR> <TD align="right"> 
72
</TD> <TD> 
tGravityAcc-arCoeff()-Y,3
</TD> </TR>
  <TR> <TD align="right"> 
73
</TD> <TD> 
tGravityAcc-arCoeff()-Y,4
</TD> </TR>
  <TR> <TD align="right"> 
74
</TD> <TD> 
tGravityAcc-arCoeff()-Z,1
</TD> </TR>
  <TR> <TD align="right"> 
75
</TD> <TD> 
tGravityAcc-arCoeff()-Z,2
</TD> </TR>
  <TR> <TD align="right"> 
76
</TD> <TD> 
tGravityAcc-arCoeff()-Z,3
</TD> </TR>
  <TR> <TD align="right"> 
77
</TD> <TD> 
tGravityAcc-arCoeff()-Z,4
</TD> </TR>
  <TR> <TD align="right"> 
78
</TD> <TD> 
tGravityAcc-correlation()-X,Y
</TD> </TR>
  <TR> <TD align="right"> 
79
</TD> <TD> 
tGravityAcc-correlation()-X,Z
</TD> </TR>
  <TR> <TD align="right"> 
80
</TD> <TD> 
tGravityAcc-correlation()-Y,Z
</TD> </TR>
  <TR> <TD align="right"> 
81
</TD> <TD> 
tBodyAccJerk-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
82
</TD> <TD> 
tBodyAccJerk-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
83
</TD> <TD> 
tBodyAccJerk-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
84
</TD> <TD> 
tBodyAccJerk-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
85
</TD> <TD> 
tBodyAccJerk-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
86
</TD> <TD> 
tBodyAccJerk-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
87
</TD> <TD> 
tBodyAccJerk-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
88
</TD> <TD> 
tBodyAccJerk-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
89
</TD> <TD> 
tBodyAccJerk-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
90
</TD> <TD> 
tBodyAccJerk-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
91
</TD> <TD> 
tBodyAccJerk-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
92
</TD> <TD> 
tBodyAccJerk-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
93
</TD> <TD> 
tBodyAccJerk-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
94
</TD> <TD> 
tBodyAccJerk-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
95
</TD> <TD> 
tBodyAccJerk-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
96
</TD> <TD> 
tBodyAccJerk-sma()
</TD> </TR>
  <TR> <TD align="right"> 
97
</TD> <TD> 
tBodyAccJerk-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
98
</TD> <TD> 
tBodyAccJerk-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
99
</TD> <TD> 
tBodyAccJerk-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
100
</TD> <TD> 
tBodyAccJerk-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
101
</TD> <TD> 
tBodyAccJerk-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
102
</TD> <TD> 
tBodyAccJerk-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
103
</TD> <TD> 
tBodyAccJerk-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
104
</TD> <TD> 
tBodyAccJerk-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
105
</TD> <TD> 
tBodyAccJerk-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
106
</TD> <TD> 
tBodyAccJerk-arCoeff()-X,1
</TD> </TR>
  <TR> <TD align="right"> 
107
</TD> <TD> 
tBodyAccJerk-arCoeff()-X,2
</TD> </TR>
  <TR> <TD align="right"> 
108
</TD> <TD> 
tBodyAccJerk-arCoeff()-X,3
</TD> </TR>
  <TR> <TD align="right"> 
109
</TD> <TD> 
tBodyAccJerk-arCoeff()-X,4
</TD> </TR>
  <TR> <TD align="right"> 
110
</TD> <TD> 
tBodyAccJerk-arCoeff()-Y,1
</TD> </TR>
  <TR> <TD align="right"> 
111
</TD> <TD> 
tBodyAccJerk-arCoeff()-Y,2
</TD> </TR>
  <TR> <TD align="right"> 
112
</TD> <TD> 
tBodyAccJerk-arCoeff()-Y,3
</TD> </TR>
  <TR> <TD align="right"> 
113
</TD> <TD> 
tBodyAccJerk-arCoeff()-Y,4
</TD> </TR>
  <TR> <TD align="right"> 
114
</TD> <TD> 
tBodyAccJerk-arCoeff()-Z,1
</TD> </TR>
  <TR> <TD align="right"> 
115
</TD> <TD> 
tBodyAccJerk-arCoeff()-Z,2
</TD> </TR>
  <TR> <TD align="right"> 
116
</TD> <TD> 
tBodyAccJerk-arCoeff()-Z,3
</TD> </TR>
  <TR> <TD align="right"> 
117
</TD> <TD> 
tBodyAccJerk-arCoeff()-Z,4
</TD> </TR>
  <TR> <TD align="right"> 
118
</TD> <TD> 
tBodyAccJerk-correlation()-X,Y
</TD> </TR>
  <TR> <TD align="right"> 
119
</TD> <TD> 
tBodyAccJerk-correlation()-X,Z
</TD> </TR>
  <TR> <TD align="right"> 
120
</TD> <TD> 
tBodyAccJerk-correlation()-Y,Z
</TD> </TR>
  <TR> <TD align="right"> 
121
</TD> <TD> 
tBodyGyro-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
122
</TD> <TD> 
tBodyGyro-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
123
</TD> <TD> 
tBodyGyro-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
124
</TD> <TD> 
tBodyGyro-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
125
</TD> <TD> 
tBodyGyro-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
126
</TD> <TD> 
tBodyGyro-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
127
</TD> <TD> 
tBodyGyro-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
128
</TD> <TD> 
tBodyGyro-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
129
</TD> <TD> 
tBodyGyro-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
130
</TD> <TD> 
tBodyGyro-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
131
</TD> <TD> 
tBodyGyro-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
132
</TD> <TD> 
tBodyGyro-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
133
</TD> <TD> 
tBodyGyro-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
134
</TD> <TD> 
tBodyGyro-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
135
</TD> <TD> 
tBodyGyro-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
136
</TD> <TD> 
tBodyGyro-sma()
</TD> </TR>
  <TR> <TD align="right"> 
137
</TD> <TD> 
tBodyGyro-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
138
</TD> <TD> 
tBodyGyro-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
139
</TD> <TD> 
tBodyGyro-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
140
</TD> <TD> 
tBodyGyro-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
141
</TD> <TD> 
tBodyGyro-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
142
</TD> <TD> 
tBodyGyro-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
143
</TD> <TD> 
tBodyGyro-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
144
</TD> <TD> 
tBodyGyro-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
145
</TD> <TD> 
tBodyGyro-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
146
</TD> <TD> 
tBodyGyro-arCoeff()-X,1
</TD> </TR>
  <TR> <TD align="right"> 
147
</TD> <TD> 
tBodyGyro-arCoeff()-X,2
</TD> </TR>
  <TR> <TD align="right"> 
148
</TD> <TD> 
tBodyGyro-arCoeff()-X,3
</TD> </TR>
  <TR> <TD align="right"> 
149
</TD> <TD> 
tBodyGyro-arCoeff()-X,4
</TD> </TR>
  <TR> <TD align="right"> 
150
</TD> <TD> 
tBodyGyro-arCoeff()-Y,1
</TD> </TR>
  <TR> <TD align="right"> 
151
</TD> <TD> 
tBodyGyro-arCoeff()-Y,2
</TD> </TR>
  <TR> <TD align="right"> 
152
</TD> <TD> 
tBodyGyro-arCoeff()-Y,3
</TD> </TR>
  <TR> <TD align="right"> 
153
</TD> <TD> 
tBodyGyro-arCoeff()-Y,4
</TD> </TR>
  <TR> <TD align="right"> 
154
</TD> <TD> 
tBodyGyro-arCoeff()-Z,1
</TD> </TR>
  <TR> <TD align="right"> 
155
</TD> <TD> 
tBodyGyro-arCoeff()-Z,2
</TD> </TR>
  <TR> <TD align="right"> 
156
</TD> <TD> 
tBodyGyro-arCoeff()-Z,3
</TD> </TR>
  <TR> <TD align="right"> 
157
</TD> <TD> 
tBodyGyro-arCoeff()-Z,4
</TD> </TR>
  <TR> <TD align="right"> 
158
</TD> <TD> 
tBodyGyro-correlation()-X,Y
</TD> </TR>
  <TR> <TD align="right"> 
159
</TD> <TD> 
tBodyGyro-correlation()-X,Z
</TD> </TR>
  <TR> <TD align="right"> 
160
</TD> <TD> 
tBodyGyro-correlation()-Y,Z
</TD> </TR>
  <TR> <TD align="right"> 
161
</TD> <TD> 
tBodyGyroJerk-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
162
</TD> <TD> 
tBodyGyroJerk-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
163
</TD> <TD> 
tBodyGyroJerk-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
164
</TD> <TD> 
tBodyGyroJerk-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
165
</TD> <TD> 
tBodyGyroJerk-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
166
</TD> <TD> 
tBodyGyroJerk-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
167
</TD> <TD> 
tBodyGyroJerk-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
168
</TD> <TD> 
tBodyGyroJerk-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
169
</TD> <TD> 
tBodyGyroJerk-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
170
</TD> <TD> 
tBodyGyroJerk-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
171
</TD> <TD> 
tBodyGyroJerk-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
172
</TD> <TD> 
tBodyGyroJerk-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
173
</TD> <TD> 
tBodyGyroJerk-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
174
</TD> <TD> 
tBodyGyroJerk-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
175
</TD> <TD> 
tBodyGyroJerk-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
176
</TD> <TD> 
tBodyGyroJerk-sma()
</TD> </TR>
  <TR> <TD align="right"> 
177
</TD> <TD> 
tBodyGyroJerk-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
178
</TD> <TD> 
tBodyGyroJerk-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
179
</TD> <TD> 
tBodyGyroJerk-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
180
</TD> <TD> 
tBodyGyroJerk-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
181
</TD> <TD> 
tBodyGyroJerk-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
182
</TD> <TD> 
tBodyGyroJerk-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
183
</TD> <TD> 
tBodyGyroJerk-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
184
</TD> <TD> 
tBodyGyroJerk-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
185
</TD> <TD> 
tBodyGyroJerk-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
186
</TD> <TD> 
tBodyGyroJerk-arCoeff()-X,1
</TD> </TR>
  <TR> <TD align="right"> 
187
</TD> <TD> 
tBodyGyroJerk-arCoeff()-X,2
</TD> </TR>
  <TR> <TD align="right"> 
188
</TD> <TD> 
tBodyGyroJerk-arCoeff()-X,3
</TD> </TR>
  <TR> <TD align="right"> 
189
</TD> <TD> 
tBodyGyroJerk-arCoeff()-X,4
</TD> </TR>
  <TR> <TD align="right"> 
190
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Y,1
</TD> </TR>
  <TR> <TD align="right"> 
191
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Y,2
</TD> </TR>
  <TR> <TD align="right"> 
192
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Y,3
</TD> </TR>
  <TR> <TD align="right"> 
193
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Y,4
</TD> </TR>
  <TR> <TD align="right"> 
194
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Z,1
</TD> </TR>
  <TR> <TD align="right"> 
195
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Z,2
</TD> </TR>
  <TR> <TD align="right"> 
196
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Z,3
</TD> </TR>
  <TR> <TD align="right"> 
197
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Z,4
</TD> </TR>
  <TR> <TD align="right"> 
198
</TD> <TD> 
tBodyGyroJerk-correlation()-X,Y
</TD> </TR>
  <TR> <TD align="right"> 
199
</TD> <TD> 
tBodyGyroJerk-correlation()-X,Z
</TD> </TR>
  <TR> <TD align="right"> 
200
</TD> <TD> 
tBodyGyroJerk-correlation()-Y,Z
</TD> </TR>
  <TR> <TD align="right"> 
201
</TD> <TD> 
tBodyAccMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
202
</TD> <TD> 
tBodyAccMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
203
</TD> <TD> 
tBodyAccMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
204
</TD> <TD> 
tBodyAccMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
205
</TD> <TD> 
tBodyAccMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
206
</TD> <TD> 
tBodyAccMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
207
</TD> <TD> 
tBodyAccMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
208
</TD> <TD> 
tBodyAccMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
209
</TD> <TD> 
tBodyAccMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
210
</TD> <TD> 
tBodyAccMag-arCoeff()1
</TD> </TR>
  <TR> <TD align="right"> 
211
</TD> <TD> 
tBodyAccMag-arCoeff()2
</TD> </TR>
  <TR> <TD align="right"> 
212
</TD> <TD> 
tBodyAccMag-arCoeff()3
</TD> </TR>
  <TR> <TD align="right"> 
213
</TD> <TD> 
tBodyAccMag-arCoeff()4
</TD> </TR>
  <TR> <TD align="right"> 
214
</TD> <TD> 
tGravityAccMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
215
</TD> <TD> 
tGravityAccMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
216
</TD> <TD> 
tGravityAccMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
217
</TD> <TD> 
tGravityAccMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
218
</TD> <TD> 
tGravityAccMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
219
</TD> <TD> 
tGravityAccMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
220
</TD> <TD> 
tGravityAccMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
221
</TD> <TD> 
tGravityAccMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
222
</TD> <TD> 
tGravityAccMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
223
</TD> <TD> 
tGravityAccMag-arCoeff()1
</TD> </TR>
  <TR> <TD align="right"> 
224
</TD> <TD> 
tGravityAccMag-arCoeff()2
</TD> </TR>
  <TR> <TD align="right"> 
225
</TD> <TD> 
tGravityAccMag-arCoeff()3
</TD> </TR>
  <TR> <TD align="right"> 
226
</TD> <TD> 
tGravityAccMag-arCoeff()4
</TD> </TR>
  <TR> <TD align="right"> 
227
</TD> <TD> 
tBodyAccJerkMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
228
</TD> <TD> 
tBodyAccJerkMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
229
</TD> <TD> 
tBodyAccJerkMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
230
</TD> <TD> 
tBodyAccJerkMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
231
</TD> <TD> 
tBodyAccJerkMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
232
</TD> <TD> 
tBodyAccJerkMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
233
</TD> <TD> 
tBodyAccJerkMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
234
</TD> <TD> 
tBodyAccJerkMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
235
</TD> <TD> 
tBodyAccJerkMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
236
</TD> <TD> 
tBodyAccJerkMag-arCoeff()1
</TD> </TR>
  <TR> <TD align="right"> 
237
</TD> <TD> 
tBodyAccJerkMag-arCoeff()2
</TD> </TR>
  <TR> <TD align="right"> 
238
</TD> <TD> 
tBodyAccJerkMag-arCoeff()3
</TD> </TR>
  <TR> <TD align="right"> 
239
</TD> <TD> 
tBodyAccJerkMag-arCoeff()4
</TD> </TR>
  <TR> <TD align="right"> 
240
</TD> <TD> 
tBodyGyroMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
241
</TD> <TD> 
tBodyGyroMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
242
</TD> <TD> 
tBodyGyroMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
243
</TD> <TD> 
tBodyGyroMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
244
</TD> <TD> 
tBodyGyroMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
245
</TD> <TD> 
tBodyGyroMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
246
</TD> <TD> 
tBodyGyroMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
247
</TD> <TD> 
tBodyGyroMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
248
</TD> <TD> 
tBodyGyroMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
249
</TD> <TD> 
tBodyGyroMag-arCoeff()1
</TD> </TR>
  <TR> <TD align="right"> 
250
</TD> <TD> 
tBodyGyroMag-arCoeff()2
</TD> </TR>
  <TR> <TD align="right"> 
251
</TD> <TD> 
tBodyGyroMag-arCoeff()3
</TD> </TR>
  <TR> <TD align="right"> 
252
</TD> <TD> 
tBodyGyroMag-arCoeff()4
</TD> </TR>
  <TR> <TD align="right"> 
253
</TD> <TD> 
tBodyGyroJerkMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
254
</TD> <TD> 
tBodyGyroJerkMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
255
</TD> <TD> 
tBodyGyroJerkMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
256
</TD> <TD> 
tBodyGyroJerkMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
257
</TD> <TD> 
tBodyGyroJerkMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
258
</TD> <TD> 
tBodyGyroJerkMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
259
</TD> <TD> 
tBodyGyroJerkMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
260
</TD> <TD> 
tBodyGyroJerkMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
261
</TD> <TD> 
tBodyGyroJerkMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
262
</TD> <TD> 
tBodyGyroJerkMag-arCoeff()1
</TD> </TR>
  <TR> <TD align="right"> 
263
</TD> <TD> 
tBodyGyroJerkMag-arCoeff()2
</TD> </TR>
  <TR> <TD align="right"> 
264
</TD> <TD> 
tBodyGyroJerkMag-arCoeff()3
</TD> </TR>
  <TR> <TD align="right"> 
265
</TD> <TD> 
tBodyGyroJerkMag-arCoeff()4
</TD> </TR>
  <TR> <TD align="right"> 
266
</TD> <TD> 
fBodyAcc-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
267
</TD> <TD> 
fBodyAcc-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
268
</TD> <TD> 
fBodyAcc-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
269
</TD> <TD> 
fBodyAcc-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
270
</TD> <TD> 
fBodyAcc-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
271
</TD> <TD> 
fBodyAcc-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
272
</TD> <TD> 
fBodyAcc-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
273
</TD> <TD> 
fBodyAcc-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
274
</TD> <TD> 
fBodyAcc-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
275
</TD> <TD> 
fBodyAcc-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
276
</TD> <TD> 
fBodyAcc-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
277
</TD> <TD> 
fBodyAcc-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
278
</TD> <TD> 
fBodyAcc-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
279
</TD> <TD> 
fBodyAcc-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
280
</TD> <TD> 
fBodyAcc-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
281
</TD> <TD> 
fBodyAcc-sma()
</TD> </TR>
  <TR> <TD align="right"> 
282
</TD> <TD> 
fBodyAcc-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
283
</TD> <TD> 
fBodyAcc-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
284
</TD> <TD> 
fBodyAcc-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
285
</TD> <TD> 
fBodyAcc-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
286
</TD> <TD> 
fBodyAcc-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
287
</TD> <TD> 
fBodyAcc-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
288
</TD> <TD> 
fBodyAcc-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
289
</TD> <TD> 
fBodyAcc-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
290
</TD> <TD> 
fBodyAcc-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
291
</TD> <TD> 
fBodyAcc-maxInds-X
</TD> </TR>
  <TR> <TD align="right"> 
292
</TD> <TD> 
fBodyAcc-maxInds-Y
</TD> </TR>
  <TR> <TD align="right"> 
293
</TD> <TD> 
fBodyAcc-maxInds-Z
</TD> </TR>
  <TR> <TD align="right"> 
294
</TD> <TD> 
fBodyAcc-meanFreq()-X
</TD> </TR>
  <TR> <TD align="right"> 
295
</TD> <TD> 
fBodyAcc-meanFreq()-Y
</TD> </TR>
  <TR> <TD align="right"> 
296
</TD> <TD> 
fBodyAcc-meanFreq()-Z
</TD> </TR>
  <TR> <TD align="right"> 
297
</TD> <TD> 
fBodyAcc-skewness()-X
</TD> </TR>
  <TR> <TD align="right"> 
298
</TD> <TD> 
fBodyAcc-kurtosis()-X
</TD> </TR>
  <TR> <TD align="right"> 
299
</TD> <TD> 
fBodyAcc-skewness()-Y
</TD> </TR>
  <TR> <TD align="right"> 
300
</TD> <TD> 
fBodyAcc-kurtosis()-Y
</TD> </TR>
  <TR> <TD align="right"> 
301
</TD> <TD> 
fBodyAcc-skewness()-Z
</TD> </TR>
  <TR> <TD align="right"> 
302
</TD> <TD> 
fBodyAcc-kurtosis()-Z
</TD> </TR>
  <TR> <TD align="right"> 
303
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
304
</TD> <TD> 
fBodyAcc-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
305
</TD> <TD> 
fBodyAcc-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
306
</TD> <TD> 
fBodyAcc-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
307
</TD> <TD> 
fBodyAcc-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
308
</TD> <TD> 
fBodyAcc-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
309
</TD> <TD> 
fBodyAcc-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
310
</TD> <TD> 
fBodyAcc-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
311
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
312
</TD> <TD> 
fBodyAcc-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
313
</TD> <TD> 
fBodyAcc-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
314
</TD> <TD> 
fBodyAcc-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
315
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
316
</TD> <TD> 
fBodyAcc-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
317
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
318
</TD> <TD> 
fBodyAcc-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
319
</TD> <TD> 
fBodyAcc-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
320
</TD> <TD> 
fBodyAcc-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
321
</TD> <TD> 
fBodyAcc-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
322
</TD> <TD> 
fBodyAcc-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
323
</TD> <TD> 
fBodyAcc-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
324
</TD> <TD> 
fBodyAcc-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
325
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
326
</TD> <TD> 
fBodyAcc-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
327
</TD> <TD> 
fBodyAcc-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
328
</TD> <TD> 
fBodyAcc-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
329
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
330
</TD> <TD> 
fBodyAcc-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
331
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
332
</TD> <TD> 
fBodyAcc-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
333
</TD> <TD> 
fBodyAcc-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
334
</TD> <TD> 
fBodyAcc-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
335
</TD> <TD> 
fBodyAcc-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
336
</TD> <TD> 
fBodyAcc-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
337
</TD> <TD> 
fBodyAcc-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
338
</TD> <TD> 
fBodyAcc-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
339
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
340
</TD> <TD> 
fBodyAcc-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
341
</TD> <TD> 
fBodyAcc-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
342
</TD> <TD> 
fBodyAcc-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
343
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
344
</TD> <TD> 
fBodyAcc-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
345
</TD> <TD> 
fBodyAccJerk-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
346
</TD> <TD> 
fBodyAccJerk-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
347
</TD> <TD> 
fBodyAccJerk-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
348
</TD> <TD> 
fBodyAccJerk-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
349
</TD> <TD> 
fBodyAccJerk-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
350
</TD> <TD> 
fBodyAccJerk-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
351
</TD> <TD> 
fBodyAccJerk-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
352
</TD> <TD> 
fBodyAccJerk-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
353
</TD> <TD> 
fBodyAccJerk-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
354
</TD> <TD> 
fBodyAccJerk-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
355
</TD> <TD> 
fBodyAccJerk-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
356
</TD> <TD> 
fBodyAccJerk-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
357
</TD> <TD> 
fBodyAccJerk-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
358
</TD> <TD> 
fBodyAccJerk-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
359
</TD> <TD> 
fBodyAccJerk-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
360
</TD> <TD> 
fBodyAccJerk-sma()
</TD> </TR>
  <TR> <TD align="right"> 
361
</TD> <TD> 
fBodyAccJerk-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
362
</TD> <TD> 
fBodyAccJerk-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
363
</TD> <TD> 
fBodyAccJerk-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
364
</TD> <TD> 
fBodyAccJerk-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
365
</TD> <TD> 
fBodyAccJerk-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
366
</TD> <TD> 
fBodyAccJerk-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
367
</TD> <TD> 
fBodyAccJerk-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
368
</TD> <TD> 
fBodyAccJerk-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
369
</TD> <TD> 
fBodyAccJerk-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
370
</TD> <TD> 
fBodyAccJerk-maxInds-X
</TD> </TR>
  <TR> <TD align="right"> 
371
</TD> <TD> 
fBodyAccJerk-maxInds-Y
</TD> </TR>
  <TR> <TD align="right"> 
372
</TD> <TD> 
fBodyAccJerk-maxInds-Z
</TD> </TR>
  <TR> <TD align="right"> 
373
</TD> <TD> 
fBodyAccJerk-meanFreq()-X
</TD> </TR>
  <TR> <TD align="right"> 
374
</TD> <TD> 
fBodyAccJerk-meanFreq()-Y
</TD> </TR>
  <TR> <TD align="right"> 
375
</TD> <TD> 
fBodyAccJerk-meanFreq()-Z
</TD> </TR>
  <TR> <TD align="right"> 
376
</TD> <TD> 
fBodyAccJerk-skewness()-X
</TD> </TR>
  <TR> <TD align="right"> 
377
</TD> <TD> 
fBodyAccJerk-kurtosis()-X
</TD> </TR>
  <TR> <TD align="right"> 
378
</TD> <TD> 
fBodyAccJerk-skewness()-Y
</TD> </TR>
  <TR> <TD align="right"> 
379
</TD> <TD> 
fBodyAccJerk-kurtosis()-Y
</TD> </TR>
  <TR> <TD align="right"> 
380
</TD> <TD> 
fBodyAccJerk-skewness()-Z
</TD> </TR>
  <TR> <TD align="right"> 
381
</TD> <TD> 
fBodyAccJerk-kurtosis()-Z
</TD> </TR>
  <TR> <TD align="right"> 
382
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
383
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
384
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
385
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
386
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
387
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
388
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
389
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
390
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
391
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
392
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
393
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
394
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
395
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
396
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
397
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
398
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
399
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
400
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
401
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
402
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
403
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
404
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
405
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
406
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
407
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
408
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
409
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
410
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
411
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
412
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
413
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
414
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
415
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
416
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
417
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
418
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
419
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
420
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
421
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
422
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
423
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
424
</TD> <TD> 
fBodyGyro-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
425
</TD> <TD> 
fBodyGyro-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
426
</TD> <TD> 
fBodyGyro-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
427
</TD> <TD> 
fBodyGyro-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
428
</TD> <TD> 
fBodyGyro-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
429
</TD> <TD> 
fBodyGyro-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
430
</TD> <TD> 
fBodyGyro-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
431
</TD> <TD> 
fBodyGyro-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
432
</TD> <TD> 
fBodyGyro-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
433
</TD> <TD> 
fBodyGyro-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
434
</TD> <TD> 
fBodyGyro-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
435
</TD> <TD> 
fBodyGyro-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
436
</TD> <TD> 
fBodyGyro-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
437
</TD> <TD> 
fBodyGyro-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
438
</TD> <TD> 
fBodyGyro-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
439
</TD> <TD> 
fBodyGyro-sma()
</TD> </TR>
  <TR> <TD align="right"> 
440
</TD> <TD> 
fBodyGyro-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
441
</TD> <TD> 
fBodyGyro-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
442
</TD> <TD> 
fBodyGyro-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
443
</TD> <TD> 
fBodyGyro-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
444
</TD> <TD> 
fBodyGyro-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
445
</TD> <TD> 
fBodyGyro-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
446
</TD> <TD> 
fBodyGyro-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
447
</TD> <TD> 
fBodyGyro-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
448
</TD> <TD> 
fBodyGyro-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
449
</TD> <TD> 
fBodyGyro-maxInds-X
</TD> </TR>
  <TR> <TD align="right"> 
450
</TD> <TD> 
fBodyGyro-maxInds-Y
</TD> </TR>
  <TR> <TD align="right"> 
451
</TD> <TD> 
fBodyGyro-maxInds-Z
</TD> </TR>
  <TR> <TD align="right"> 
452
</TD> <TD> 
fBodyGyro-meanFreq()-X
</TD> </TR>
  <TR> <TD align="right"> 
453
</TD> <TD> 
fBodyGyro-meanFreq()-Y
</TD> </TR>
  <TR> <TD align="right"> 
454
</TD> <TD> 
fBodyGyro-meanFreq()-Z
</TD> </TR>
  <TR> <TD align="right"> 
455
</TD> <TD> 
fBodyGyro-skewness()-X
</TD> </TR>
  <TR> <TD align="right"> 
456
</TD> <TD> 
fBodyGyro-kurtosis()-X
</TD> </TR>
  <TR> <TD align="right"> 
457
</TD> <TD> 
fBodyGyro-skewness()-Y
</TD> </TR>
  <TR> <TD align="right"> 
458
</TD> <TD> 
fBodyGyro-kurtosis()-Y
</TD> </TR>
  <TR> <TD align="right"> 
459
</TD> <TD> 
fBodyGyro-skewness()-Z
</TD> </TR>
  <TR> <TD align="right"> 
460
</TD> <TD> 
fBodyGyro-kurtosis()-Z
</TD> </TR>
  <TR> <TD align="right"> 
461
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
462
</TD> <TD> 
fBodyGyro-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
463
</TD> <TD> 
fBodyGyro-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
464
</TD> <TD> 
fBodyGyro-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
465
</TD> <TD> 
fBodyGyro-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
466
</TD> <TD> 
fBodyGyro-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
467
</TD> <TD> 
fBodyGyro-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
468
</TD> <TD> 
fBodyGyro-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
469
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
470
</TD> <TD> 
fBodyGyro-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
471
</TD> <TD> 
fBodyGyro-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
472
</TD> <TD> 
fBodyGyro-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
473
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
474
</TD> <TD> 
fBodyGyro-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
475
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
476
</TD> <TD> 
fBodyGyro-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
477
</TD> <TD> 
fBodyGyro-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
478
</TD> <TD> 
fBodyGyro-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
479
</TD> <TD> 
fBodyGyro-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
480
</TD> <TD> 
fBodyGyro-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
481
</TD> <TD> 
fBodyGyro-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
482
</TD> <TD> 
fBodyGyro-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
483
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
484
</TD> <TD> 
fBodyGyro-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
485
</TD> <TD> 
fBodyGyro-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
486
</TD> <TD> 
fBodyGyro-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
487
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
488
</TD> <TD> 
fBodyGyro-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
489
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
490
</TD> <TD> 
fBodyGyro-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
491
</TD> <TD> 
fBodyGyro-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
492
</TD> <TD> 
fBodyGyro-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
493
</TD> <TD> 
fBodyGyro-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
494
</TD> <TD> 
fBodyGyro-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
495
</TD> <TD> 
fBodyGyro-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
496
</TD> <TD> 
fBodyGyro-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
497
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
498
</TD> <TD> 
fBodyGyro-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
499
</TD> <TD> 
fBodyGyro-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
500
</TD> <TD> 
fBodyGyro-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
501
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
502
</TD> <TD> 
fBodyGyro-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
503
</TD> <TD> 
fBodyAccMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
504
</TD> <TD> 
fBodyAccMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
505
</TD> <TD> 
fBodyAccMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
506
</TD> <TD> 
fBodyAccMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
507
</TD> <TD> 
fBodyAccMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
508
</TD> <TD> 
fBodyAccMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
509
</TD> <TD> 
fBodyAccMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
510
</TD> <TD> 
fBodyAccMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
511
</TD> <TD> 
fBodyAccMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
512
</TD> <TD> 
fBodyAccMag-maxInds
</TD> </TR>
  <TR> <TD align="right"> 
513
</TD> <TD> 
fBodyAccMag-meanFreq()
</TD> </TR>
  <TR> <TD align="right"> 
514
</TD> <TD> 
fBodyAccMag-skewness()
</TD> </TR>
  <TR> <TD align="right"> 
515
</TD> <TD> 
fBodyAccMag-kurtosis()
</TD> </TR>
  <TR> <TD align="right"> 
516
</TD> <TD> 
fBodyBodyAccJerkMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
517
</TD> <TD> 
fBodyBodyAccJerkMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
518
</TD> <TD> 
fBodyBodyAccJerkMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
519
</TD> <TD> 
fBodyBodyAccJerkMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
520
</TD> <TD> 
fBodyBodyAccJerkMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
521
</TD> <TD> 
fBodyBodyAccJerkMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
522
</TD> <TD> 
fBodyBodyAccJerkMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
523
</TD> <TD> 
fBodyBodyAccJerkMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
524
</TD> <TD> 
fBodyBodyAccJerkMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
525
</TD> <TD> 
fBodyBodyAccJerkMag-maxInds
</TD> </TR>
  <TR> <TD align="right"> 
526
</TD> <TD> 
fBodyBodyAccJerkMag-meanFreq()
</TD> </TR>
  <TR> <TD align="right"> 
527
</TD> <TD> 
fBodyBodyAccJerkMag-skewness()
</TD> </TR>
  <TR> <TD align="right"> 
528
</TD> <TD> 
fBodyBodyAccJerkMag-kurtosis()
</TD> </TR>
  <TR> <TD align="right"> 
529
</TD> <TD> 
fBodyBodyGyroMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
530
</TD> <TD> 
fBodyBodyGyroMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
531
</TD> <TD> 
fBodyBodyGyroMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
532
</TD> <TD> 
fBodyBodyGyroMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
533
</TD> <TD> 
fBodyBodyGyroMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
534
</TD> <TD> 
fBodyBodyGyroMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
535
</TD> <TD> 
fBodyBodyGyroMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
536
</TD> <TD> 
fBodyBodyGyroMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
537
</TD> <TD> 
fBodyBodyGyroMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
538
</TD> <TD> 
fBodyBodyGyroMag-maxInds
</TD> </TR>
  <TR> <TD align="right"> 
539
</TD> <TD> 
fBodyBodyGyroMag-meanFreq()
</TD> </TR>
  <TR> <TD align="right"> 
540
</TD> <TD> 
fBodyBodyGyroMag-skewness()
</TD> </TR>
  <TR> <TD align="right"> 
541
</TD> <TD> 
fBodyBodyGyroMag-kurtosis()
</TD> </TR>
  <TR> <TD align="right"> 
542
</TD> <TD> 
fBodyBodyGyroJerkMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
543
</TD> <TD> 
fBodyBodyGyroJerkMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
544
</TD> <TD> 
fBodyBodyGyroJerkMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
545
</TD> <TD> 
fBodyBodyGyroJerkMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
546
</TD> <TD> 
fBodyBodyGyroJerkMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
547
</TD> <TD> 
fBodyBodyGyroJerkMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
548
</TD> <TD> 
fBodyBodyGyroJerkMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
549
</TD> <TD> 
fBodyBodyGyroJerkMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
550
</TD> <TD> 
fBodyBodyGyroJerkMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
551
</TD> <TD> 
fBodyBodyGyroJerkMag-maxInds
</TD> </TR>
  <TR> <TD align="right"> 
552
</TD> <TD> 
fBodyBodyGyroJerkMag-meanFreq()
</TD> </TR>
  <TR> <TD align="right"> 
553
</TD> <TD> 
fBodyBodyGyroJerkMag-skewness()
</TD> </TR>
  <TR> <TD align="right"> 
554
</TD> <TD> 
fBodyBodyGyroJerkMag-kurtosis()
</TD> </TR>
  <TR> <TD align="right"> 
555
</TD> <TD> 
angle(tBodyAccMean,gravity)
</TD> </TR>
  <TR> <TD align="right"> 
556
</TD> <TD> 
angle(tBodyAccJerkMean),gravityMean)
</TD> </TR>
  <TR> <TD align="right"> 
557
</TD> <TD> 
angle(tBodyGyroMean,gravityMean)
</TD> </TR>
  <TR> <TD align="right"> 
558
</TD> <TD> 
angle(tBodyGyroJerkMean,gravityMean)
</TD> </TR>
  <TR> <TD align="right"> 
559
</TD> <TD> 
angle(X,gravityMean)
</TD> </TR>
  <TR> <TD align="right"> 
560
</TD> <TD> 
angle(Y,gravityMean)
</TD> </TR>
  <TR> <TD align="right"> 
561
</TD> <TD> 
angle(Z,gravityMean)
</TD> </TR>
   </TABLE>

Tidy Dataset
------------

Only the measurements on the mean and standard deviation for each
measurement were extracted. These are the variables in the tidy dataset.
<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Sat Jul 12 12:30:40 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> 
Variables
</TH>  </TR>
  <TR> <TD align="right"> 
1
</TD> <TD> 
subjectidx
</TD> </TR>
  <TR> <TD align="right"> 
2
</TD> <TD> 
activity
</TD> </TR>
  <TR> <TD align="right"> 
3
</TD> <TD> 
tbodyaccstdx
</TD> </TR>
  <TR> <TD align="right"> 
4
</TD> <TD> 
tbodyaccstdy
</TD> </TR>
  <TR> <TD align="right"> 
5
</TD> <TD> 
tbodyaccstdz
</TD> </TR>
  <TR> <TD align="right"> 
6
</TD> <TD> 
tgravityaccstdx
</TD> </TR>
  <TR> <TD align="right"> 
7
</TD> <TD> 
tgravityaccstdy
</TD> </TR>
  <TR> <TD align="right"> 
8
</TD> <TD> 
tgravityaccstdz
</TD> </TR>
  <TR> <TD align="right"> 
9
</TD> <TD> 
tbodyaccjerkstdx
</TD> </TR>
  <TR> <TD align="right"> 
10
</TD> <TD> 
tbodyaccjerkstdy
</TD> </TR>
  <TR> <TD align="right"> 
11
</TD> <TD> 
tbodyaccjerkstdz
</TD> </TR>
  <TR> <TD align="right"> 
12
</TD> <TD> 
tbodygyrostdx
</TD> </TR>
  <TR> <TD align="right"> 
13
</TD> <TD> 
tbodygyrostdy
</TD> </TR>
  <TR> <TD align="right"> 
14
</TD> <TD> 
tbodygyrostdz
</TD> </TR>
  <TR> <TD align="right"> 
15
</TD> <TD> 
tbodygyrojerkstdx
</TD> </TR>
  <TR> <TD align="right"> 
16
</TD> <TD> 
tbodygyrojerkstdy
</TD> </TR>
  <TR> <TD align="right"> 
17
</TD> <TD> 
tbodygyrojerkstdz
</TD> </TR>
  <TR> <TD align="right"> 
18
</TD> <TD> 
tbodyaccmagstd
</TD> </TR>
  <TR> <TD align="right"> 
19
</TD> <TD> 
tgravityaccmagstd
</TD> </TR>
  <TR> <TD align="right"> 
20
</TD> <TD> 
tbodyaccjerkmagstd
</TD> </TR>
  <TR> <TD align="right"> 
21
</TD> <TD> 
tbodygyromagstd
</TD> </TR>
  <TR> <TD align="right"> 
22
</TD> <TD> 
tbodygyrojerkmagstd
</TD> </TR>
  <TR> <TD align="right"> 
23
</TD> <TD> 
fbodyaccstdx
</TD> </TR>
  <TR> <TD align="right"> 
24
</TD> <TD> 
fbodyaccstdy
</TD> </TR>
  <TR> <TD align="right"> 
25
</TD> <TD> 
fbodyaccstdz
</TD> </TR>
  <TR> <TD align="right"> 
26
</TD> <TD> 
fbodyaccjerkstdx
</TD> </TR>
  <TR> <TD align="right"> 
27
</TD> <TD> 
fbodyaccjerkstdy
</TD> </TR>
  <TR> <TD align="right"> 
28
</TD> <TD> 
fbodyaccjerkstdz
</TD> </TR>
  <TR> <TD align="right"> 
29
</TD> <TD> 
fbodygyrostdx
</TD> </TR>
  <TR> <TD align="right"> 
30
</TD> <TD> 
fbodygyrostdy
</TD> </TR>
  <TR> <TD align="right"> 
31
</TD> <TD> 
fbodygyrostdz
</TD> </TR>
  <TR> <TD align="right"> 
32
</TD> <TD> 
fbodyaccmagstd
</TD> </TR>
  <TR> <TD align="right"> 
33
</TD> <TD> 
fbodybodyaccjerkmagstd
</TD> </TR>
  <TR> <TD align="right"> 
34
</TD> <TD> 
fbodybodygyromagstd
</TD> </TR>
  <TR> <TD align="right"> 
35
</TD> <TD> 
fbodybodygyrojerkmagstd
</TD> </TR>
  <TR> <TD align="right"> 
36
</TD> <TD> 
tbodyaccmeanx
</TD> </TR>
  <TR> <TD align="right"> 
37
</TD> <TD> 
tbodyaccmeany
</TD> </TR>
  <TR> <TD align="right"> 
38
</TD> <TD> 
tbodyaccmeanz
</TD> </TR>
  <TR> <TD align="right"> 
39
</TD> <TD> 
tgravityaccmeanx
</TD> </TR>
  <TR> <TD align="right"> 
40
</TD> <TD> 
tgravityaccmeany
</TD> </TR>
  <TR> <TD align="right"> 
41
</TD> <TD> 
tgravityaccmeanz
</TD> </TR>
  <TR> <TD align="right"> 
42
</TD> <TD> 
tbodyaccjerkmeanx
</TD> </TR>
  <TR> <TD align="right"> 
43
</TD> <TD> 
tbodyaccjerkmeany
</TD> </TR>
  <TR> <TD align="right"> 
44
</TD> <TD> 
tbodyaccjerkmeanz
</TD> </TR>
  <TR> <TD align="right"> 
45
</TD> <TD> 
tbodygyromeanx
</TD> </TR>
  <TR> <TD align="right"> 
46
</TD> <TD> 
tbodygyromeany
</TD> </TR>
  <TR> <TD align="right"> 
47
</TD> <TD> 
tbodygyromeanz
</TD> </TR>
  <TR> <TD align="right"> 
48
</TD> <TD> 
tbodygyrojerkmeanx
</TD> </TR>
  <TR> <TD align="right"> 
49
</TD> <TD> 
tbodygyrojerkmeany
</TD> </TR>
  <TR> <TD align="right"> 
50
</TD> <TD> 
tbodygyrojerkmeanz
</TD> </TR>
  <TR> <TD align="right"> 
51
</TD> <TD> 
tbodyaccmagmean
</TD> </TR>
  <TR> <TD align="right"> 
52
</TD> <TD> 
tgravityaccmagmean
</TD> </TR>
  <TR> <TD align="right"> 
53
</TD> <TD> 
tbodyaccjerkmagmean
</TD> </TR>
  <TR> <TD align="right"> 
54
</TD> <TD> 
tbodygyromagmean
</TD> </TR>
  <TR> <TD align="right"> 
55
</TD> <TD> 
tbodygyrojerkmagmean
</TD> </TR>
  <TR> <TD align="right"> 
56
</TD> <TD> 
fbodyaccmeanx
</TD> </TR>
  <TR> <TD align="right"> 
57
</TD> <TD> 
fbodyaccmeany
</TD> </TR>
  <TR> <TD align="right"> 
58
</TD> <TD> 
fbodyaccmeanz
</TD> </TR>
  <TR> <TD align="right"> 
59
</TD> <TD> 
fbodyaccjerkmeanx
</TD> </TR>
  <TR> <TD align="right"> 
60
</TD> <TD> 
fbodyaccjerkmeany
</TD> </TR>
  <TR> <TD align="right"> 
61
</TD> <TD> 
fbodyaccjerkmeanz
</TD> </TR>
  <TR> <TD align="right"> 
62
</TD> <TD> 
fbodygyromeanx
</TD> </TR>
  <TR> <TD align="right"> 
63
</TD> <TD> 
fbodygyromeany
</TD> </TR>
  <TR> <TD align="right"> 
64
</TD> <TD> 
fbodygyromeanz
</TD> </TR>
  <TR> <TD align="right"> 
65
</TD> <TD> 
fbodyaccmagmean
</TD> </TR>
  <TR> <TD align="right"> 
66
</TD> <TD> 
fbodybodyaccjerkmagmean
</TD> </TR>
  <TR> <TD align="right"> 
67
</TD> <TD> 
fbodybodygyromagmean
</TD> </TR>
  <TR> <TD align="right"> 
68
</TD> <TD> 
fbodybodygyrojerkmagmean
</TD> </TR>
   </TABLE>
