package com.baidu.tts.database;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.client.model.ModelFileInfo;
import com.baidu.tts.database.f.a;
import com.baidu.tts.tools.SqlTool;
import com.iflytek.aiui.AIUIConstant;

public class ModelFileTable {

    public enum Field {
        ID("id", "integer primary key"),
        LENGTH("length", "bigint"),
        MD5("md5", "varchar(32)"),
        NAME(AIUIConstant.KEY_NAME, "varchar(256) not null default unnamed"),
        ABS_PATH("absPath", "varchar");
        
        private final String f;
        private final String g;

        private Field(String str, String str2) {
            this.f = str;
            this.g = str2;
        }

        public String getColumnName() {
            return this.f;
        }

        public String getDataType() {
            return this.g;
        }
    }

    public static String a() {
        return SqlTool.sqlCreateTable("modelFile", Field.values());
    }

    public static String b() {
        return SqlTool.sqlDropTable("modelFile");
    }

    public static int a(SQLiteDatabase sQLiteDatabase, String str) {
        return sQLiteDatabase.delete("modelFile", "id=?", new String[]{str});
    }

    public static void a(SQLiteDatabase sQLiteDatabase, final ModelFileBags modelFileBags) {
        new f(sQLiteDatabase, new a() {
            public boolean a(SQLiteDatabase sQLiteDatabase) {
                try {
                    SQLiteStatement compileStatement = sQLiteDatabase.compileStatement("insert into modelFile (id, length, md5, name, absPath) values (?, ?, ?, ?, ?)");
                    for (ModelFileInfo modelFileInfo : modelFileBags.getModelFileInfos()) {
                        String serverid = modelFileInfo.getServerid();
                        String length = modelFileInfo.getLength();
                        String md5 = modelFileInfo.getMd5();
                        String name = modelFileInfo.getName();
                        String absPath = modelFileInfo.getAbsPath();
                        compileStatement.bindString(1, serverid);
                        compileStatement.bindString(2, length);
                        compileStatement.bindString(3, md5);
                        compileStatement.bindString(4, name);
                        compileStatement.bindString(5, absPath);
                        compileStatement.executeInsert();
                    }
                    return true;
                } catch (Exception e) {
                    return false;
                }
            }
        }).a();
    }
}
