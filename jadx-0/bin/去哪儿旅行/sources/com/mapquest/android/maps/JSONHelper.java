package com.mapquest.android.maps;

import org.json.JSONArray;
import org.json.JSONObject;

class JSONHelper {
    public static final String LOG_TAG = JSONHelper.class.getName();
    private boolean debug = false;

    /* Access modifiers changed, original: 0000 */
    public void setDebug(boolean z) {
        this.debug = z;
    }

    public JSONObject getJSONObject(String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                return jSONObject.getJSONObject(str);
            } catch (Exception e) {
                if (this.debug) {
                }
            } catch (Error e2) {
                if (this.debug) {
                }
            }
        }
        return null;
    }

    public JSONArray getJSONArray(String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                return jSONObject.getJSONArray(str);
            } catch (Exception e) {
                if (this.debug) {
                }
            } catch (Error e2) {
                if (this.debug) {
                }
            }
        }
        return new JSONArray();
    }

    public JSONArray getJSONArray(int i, JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                return jSONArray.optJSONArray(i);
            } catch (Exception e) {
                if (this.debug) {
                }
            } catch (Error e2) {
                if (this.debug) {
                }
            }
        }
        return new JSONArray();
    }

    public int getInt(String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (Exception e) {
                if (this.debug) {
                }
            } catch (Error e2) {
                if (this.debug) {
                }
            }
        }
        return -1;
    }

    public String getString(String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                return jSONObject.getString(str);
            } catch (Exception e) {
                if (this.debug) {
                }
            } catch (Error e2) {
                if (this.debug) {
                }
            }
        }
        return "";
    }

    public Double getDouble(String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                return Double.valueOf(jSONObject.getDouble(str));
            } catch (Exception e) {
                if (this.debug) {
                }
            } catch (Error e2) {
                if (this.debug) {
                }
            }
        }
        return Double.valueOf(-1.0d);
    }

    public boolean getBoolean(String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                return jSONObject.getBoolean(str);
            } catch (Exception e) {
                if (this.debug) {
                }
            } catch (Error e2) {
                if (this.debug) {
                }
            }
        }
        return false;
    }

    public String getString(int i, JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                return jSONArray.getString(i);
            } catch (Exception e) {
                if (this.debug) {
                }
            } catch (Error e2) {
                if (this.debug) {
                }
            }
        }
        return "";
    }

    public int getInt(int i, JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                return jSONArray.getInt(i);
            } catch (Error | Exception e) {
            }
        }
        return -1;
    }

    public double getDouble(int i, JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                return jSONArray.getDouble(i);
            } catch (Exception e) {
                if (this.debug) {
                }
            } catch (Error e2) {
                if (this.debug) {
                }
            }
        }
        return -1.0d;
    }

    public JSONObject getJSONObject(int i, JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                return jSONArray.getJSONObject(i);
            } catch (Exception e) {
                if (this.debug) {
                }
            } catch (Error e2) {
                if (this.debug) {
                }
            }
        }
        return null;
    }
}
