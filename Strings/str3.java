import java.io.File;
package com.journaldev.files;

 
class Main {
        public static void main(String[] args) {
                File theFile = new File("C:\IBM\DB2\PROGRAM\DB2COPY1.EXE");
                System.out.println("Drive : " + theFile.getParent());
                String path = "\IBM\DB2\PROGRAM\DB2COPY1.EXE";
                String parent = path.replace("\", "||");
                System.out.println("Folder : " + parent);
        }
}
 
