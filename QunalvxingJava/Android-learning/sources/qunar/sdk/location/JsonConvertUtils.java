package qunar.sdk.location;

import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.List;

public class JsonConvertUtils {
    public static String changeArrayDateToJson(List<QLocation> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        while (list.size() > 5) {
            list.remove(0);
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (QLocation qLocation : list) {
                TempLoc tempLoc = new TempLoc(qLocation.getLatitude(), qLocation.getLongitude(), qLocation.getTime());
                tempLoc.country = qLocation.getCountry();
                tempLoc.countryCode = qLocation.getCountryCode();
                tempLoc.isAbroad = qLocation.getIsAbroad();
                arrayList.add(tempLoc);
            }
            return JSON.toJSON(arrayList).toString();
        } catch (Exception e) {
            return null;
        }
    }

    public static List<QLocation> changeJsonToArray(String str) {
        try {
            List<TempLoc> parseArray = JSON.parseArray(str, TempLoc.class);
            if (parseArray == null || parseArray.size() == 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (TempLoc tempLoc : parseArray) {
                QLocation qLocation = new QLocation(tempLoc.mLatitude, tempLoc.mLongitude);
                qLocation.setTime(tempLoc.mTime);
                qLocation.setCountry(tempLoc.country);
                qLocation.setCountryCode(tempLoc.countryCode);
                qLocation.setisAbroad(tempLoc.isAbroad);
                arrayList.add(qLocation);
            }
            return arrayList;
        } catch (Exception e) {
            return null;
        }
    }
}
