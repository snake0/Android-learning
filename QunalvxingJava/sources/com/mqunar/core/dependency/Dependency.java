package com.mqunar.core.dependency;

import com.mqunar.module.ModuleInfo;
import com.mqunar.tools.log.QLog;
import java.util.ArrayList;
import java.util.List;

public class Dependency extends Atom {
    public String applicationClassName;
    public List<Atom> atomDependenciesList;
    public List<String> atomPackages;
    public int checkFlag;
    public List<Component> components;
    public boolean hasRes;
    public List<Lib> libDependenciesList;
    public boolean multiDex;
    public int packageId = -1;

    public class Component {
        public List<IntentFilter> intentFilters;
        public String name;

        public class IntentFilter {
            public List<String> action;
            public List<String> category;
            public List<Data> data;

            public class Data {
                public String host;
                public String mimeType;
                public String path;
                public String pathPattern;
                public String pathPrefix;
                public String port;
                public String schema;
            }
        }
    }

    public void setPackageId(String str) {
        try {
            this.packageId = Integer.parseInt(str, 16);
        } catch (Exception e) {
            QLog.e(e);
        }
    }

    public List<Atom> getFailAtomList(List<ModuleInfo> list) {
        return getFailAtomList(new ArrayList(), list);
    }

    public List<Atom> getFailAtomList(List<Atom> list, List<ModuleInfo> list2) {
        ArrayList arrayList = new ArrayList();
        if (!(this.atomDependenciesList == null || this.atomDependenciesList.isEmpty())) {
            list.add(this);
            for (Atom atom : this.atomDependenciesList) {
                Object obj;
                for (ModuleInfo moduleInfo : list2) {
                    if (atom.packageName.equals(moduleInfo.dependency.packageName)) {
                        obj = moduleInfo.dependency;
                        break;
                    }
                }
                obj = null;
                if (obj == null) {
                    a(arrayList, atom);
                } else if (!list.contains(obj) && (obj.checkFlag == -20 || obj.checkFlag == -21)) {
                    a(arrayList, obj);
                    for (Atom atom2 : obj.getFailAtomList(list, list2)) {
                        a(arrayList, atom2);
                    }
                }
            }
            list.remove(this);
        }
        return arrayList;
    }

    private static void a(List<Atom> list, Atom atom) {
        for (Atom atom2 : list) {
            if (atom2.packageName.equals(atom.packageName)) {
                if (atom.versionCode > atom2.versionCode) {
                    list.remove(atom2);
                    list.add(atom);
                    return;
                }
                return;
            }
        }
        list.add(atom);
    }

    public String toString() {
        return "Dependency [packageName=" + this.packageName + ", packageId=" + this.packageId + ", versionCode=" + this.versionCode + "]";
    }

    public static int checkVersion(String str, String str2) {
        if (str.endsWith("-SNAPSHOT")) {
            str = str.substring(0, str.length() - "-SNAPSHOT".length());
        }
        if (str2.endsWith("-SNAPSHOT")) {
            str2 = str2.substring(0, str2.length() - "-SNAPSHOT".length());
        }
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        for (int i = 0; i < split.length; i++) {
            if (!split[i].equals(split2[i])) {
                return Integer.parseInt(split[i]) - Integer.parseInt(split2[i]);
            }
        }
        return 0;
    }
}
