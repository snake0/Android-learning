package com.mqunar.core.dependency;

import com.mqunar.module.ModuleInfo;
import java.util.List;

public class ComponentInfo {
    public String packageName;

    public AtomNode getAtomNode(List<AtomNode> list) {
        for (AtomNode atomNode : list) {
            if (this.packageName.equals(((ModuleInfo) atomNode.versionList.get(0)).dependency.packageName)) {
                return atomNode;
            }
        }
        return null;
    }
}
