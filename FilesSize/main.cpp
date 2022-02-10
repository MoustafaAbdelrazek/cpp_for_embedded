#include <iostream>
#include <sstream>
#include <cstring>
using namespace std;

#define Music 0
#define Image 1
#define Movie 2
#define Other 3



int GetSize(string S);
uint8_t Get_Extension(string s);


int main(void)
{
    uint32_t NumTestCases = 0;
    uint32_t * ArrTestCases = NULL;
    string Input = "";
    uint32_t Size = 0;
    uint8_t Extension = Other;
    uint32_t Result[4]{0};
    cin>>NumTestCases;
    ArrTestCases = new uint32_t[NumTestCases]{0};
    string Result1[2]={""};
    for(uint32_t i  = 0 ; i < NumTestCases ; i++)
    {
        cin>>ArrTestCases[i];
    }

    for(uint32_t i = 0 ; i < NumTestCases ; i++)
    {
        memset(Result,0,sizeof(Result));
        for(uint32_t j = 0; j<ArrTestCases[i] ; j++)
        {
            getline(cin>>ws,Input);
            Size = GetSize(Input);
            Extension = Get_Extension(Input);
            Result[Extension]+=Size;
        }
        
        cout<<"music "<<Result[Music]<<"b images "<<Result[Image]<<"b movies "<<Result[Movie]<<"b other "<<Result[Other]<<"b"<<endl;
    }

    return 0;
}



int GetSize(string S)
{
    stringstream ss(S);
    string temp = "";
    int Size = 0;
    while(ss>>temp); //dragons_Song .mp3 11b
    stringstream Num(temp);
    Num>>Size;
    return Size;
}

uint8_t Get_Extension(string s)
{
    int E=Other;
    int IndexOfDot = s.rfind(".");
    int IndexOfSpace = s.rfind(" ");
    string Extension = s.substr(IndexOfDot,IndexOfSpace-IndexOfDot);
    if(Extension == ".mp3" || Extension == ".aac" || Extension == ".flac" )
    {
        E = Music;
    }
    else if(Extension == ".jpg" || Extension == ".bmp" || Extension == ".gif" )
    {
        E = Image;
    }
    else if(Extension == ".mp4" || Extension == ".avi" || Extension == ".mkv" )
    {
        E = Movie;
    }

    return E;
}