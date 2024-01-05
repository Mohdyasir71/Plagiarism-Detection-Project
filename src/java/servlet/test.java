
package servlet;

import java.util.Scanner;


public class test {
    public static void main(String ar[])
    {
        
    String content1="yasir. Gitanjali Bhatt. Sudhanshu Shanker Vaish. Ajendra Pratap Singh. Shivam Gupta. Rajeev Upadhyay. Shikha Gupta. Jyoti Dohre. Akanksha Singh. Vivek Yadav. Sudeep Kumar. Archana Singh Negi." ;
    String content2=" Meena pPandey. Gitanjali Bhatt. Sudhanshu Shanker Vaish. Ajendrap Pratap Singh. Shivam Gupta. Rajeev Upadhyay. Shikha Gupta. Jyoti Dohre.Akanksha Singh. Vivek Yadav. Sudeep Kumar. Archana Singh Negi";
    
        String copyContent="";
Scanner sc1=new Scanner(content1);
           sc1.useDelimiter(".  *");
           String str1="",str2="";
    int count=0;
           while(sc1.hasNext())
           {
            str1=sc1.next();
/*Scanner sc2=new Scanner(content2);
sc2.useDelimiter(".");
while(sc2.hasNext())
{
    str2=sc2.next();
    System.out.println("ok...");
    if(str1.equals(str2))
    {
        count++;
        copyContent +=str1+"\n";
    }
}*/
            System.out.println(str1);
  
    }
//System.out.println("copy Content "+copyContent);
    }
}
