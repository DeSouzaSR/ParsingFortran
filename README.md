# ParsingFortran

A simple program to demonstrate how to read a parameters file in fortran, which you want  ignore one or more labels or variables. 

Pro and Cons in this procedure

Pros:
- Simple and fast
- No external program is required.

Cons:
- If you change your parameter file (param.ini), you must change you source code.
- You can not include comments in parameter file. Actually, is possible, but you need to create one or more junk variable, like "label".

