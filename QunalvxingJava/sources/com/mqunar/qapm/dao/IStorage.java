package com.mqunar.qapm.dao;

import com.mqunar.qapm.domain.BaseData;

public interface IStorage {
    void popData();

    void putData(BaseData baseData);

    void saveData(BaseData baseData);
}
