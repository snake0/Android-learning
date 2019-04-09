.class Lcom/mapquest/android/maps/JSONHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private debug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/mapquest/android/maps/JSONHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/JSONHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    .line 12
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 4

    .prologue
    .line 127
    if-eqz p2, :cond_c

    .line 129
    :try_start_2
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_5} :catch_e

    move-result v0

    .line 141
    :goto_6
    return v0

    .line 130
    :catch_7
    move-exception v0

    .line 131
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    .line 141
    :cond_c
    :goto_c
    const/4 v0, 0x0

    goto :goto_6

    .line 134
    :catch_e
    move-exception v0

    .line 135
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    goto :goto_c
.end method

.method public getDouble(ILorg/json/JSONArray;)D
    .registers 5

    .prologue
    .line 177
    if-eqz p2, :cond_c

    .line 179
    :try_start_2
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getDouble(I)D
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_5} :catch_f

    move-result-wide v0

    .line 191
    :goto_6
    return-wide v0

    .line 180
    :catch_7
    move-exception v0

    .line 181
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    .line 191
    :cond_c
    :goto_c
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_6

    .line 184
    :catch_f
    move-exception v0

    .line 185
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    goto :goto_c
.end method

.method public getDouble(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Double;
    .registers 5

    .prologue
    .line 109
    if-eqz p2, :cond_10

    .line 111
    :try_start_2
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_9} :catch_17

    move-result-object v0

    .line 123
    :goto_a
    return-object v0

    .line 112
    :catch_b
    move-exception v0

    .line 113
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_10

    .line 123
    :cond_10
    :goto_10
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_a

    .line 116
    :catch_17
    move-exception v0

    .line 117
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_10

    goto :goto_10
.end method

.method public getInt(ILorg/json/JSONArray;)I
    .registers 4

    .prologue
    .line 163
    if-eqz p2, :cond_8

    .line 165
    :try_start_2
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_5} :catch_a

    move-result v0

    .line 173
    :goto_6
    return v0

    .line 166
    :catch_7
    move-exception v0

    .line 173
    :cond_8
    :goto_8
    const/4 v0, -0x1

    goto :goto_6

    .line 168
    :catch_a
    move-exception v0

    goto :goto_8
.end method

.method public getInt(Ljava/lang/String;Lorg/json/JSONObject;)I
    .registers 4

    .prologue
    .line 73
    if-eqz p2, :cond_c

    .line 75
    :try_start_2
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_5} :catch_e

    move-result v0

    .line 87
    :goto_6
    return v0

    .line 76
    :catch_7
    move-exception v0

    .line 77
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    .line 87
    :cond_c
    :goto_c
    const/4 v0, -0x1

    goto :goto_6

    .line 80
    :catch_e
    move-exception v0

    .line 81
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    goto :goto_c
.end method

.method public getJSONArray(ILorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 4

    .prologue
    .line 55
    if-eqz p2, :cond_c

    .line 57
    :try_start_2
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_5} :catch_12

    move-result-object v0

    .line 69
    :goto_6
    return-object v0

    .line 58
    :catch_7
    move-exception v0

    .line 59
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    .line 69
    :cond_c
    :goto_c
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_6

    .line 62
    :catch_12
    move-exception v0

    .line 63
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    goto :goto_c
.end method

.method public getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .registers 4

    .prologue
    .line 37
    if-eqz p2, :cond_c

    .line 39
    :try_start_2
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_5} :catch_12

    move-result-object v0

    .line 51
    :goto_6
    return-object v0

    .line 40
    :catch_7
    move-exception v0

    .line 41
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    .line 51
    :cond_c
    :goto_c
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_6

    .line 44
    :catch_12
    move-exception v0

    .line 45
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    goto :goto_c
.end method

.method public getJSONObject(ILorg/json/JSONArray;)Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 195
    if-eqz p2, :cond_c

    .line 197
    :try_start_2
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_5} :catch_e

    move-result-object v0

    .line 209
    :goto_6
    return-object v0

    .line 198
    :catch_7
    move-exception v0

    .line 199
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    .line 209
    :cond_c
    :goto_c
    const/4 v0, 0x0

    goto :goto_6

    .line 202
    :catch_e
    move-exception v0

    .line 203
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    goto :goto_c
.end method

.method public getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 19
    if-eqz p2, :cond_c

    .line 21
    :try_start_2
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_5} :catch_e

    move-result-object v0

    .line 33
    :goto_6
    return-object v0

    .line 22
    :catch_7
    move-exception v0

    .line 23
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    .line 33
    :cond_c
    :goto_c
    const/4 v0, 0x0

    goto :goto_6

    .line 26
    :catch_e
    move-exception v0

    .line 27
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    goto :goto_c
.end method

.method public getString(ILorg/json/JSONArray;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 145
    if-eqz p2, :cond_c

    .line 147
    :try_start_2
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_5} :catch_f

    move-result-object v0

    .line 159
    :goto_6
    return-object v0

    .line 148
    :catch_7
    move-exception v0

    .line 149
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    .line 159
    :cond_c
    :goto_c
    const-string v0, ""

    goto :goto_6

    .line 152
    :catch_f
    move-exception v0

    .line 153
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    goto :goto_c
.end method

.method public getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 91
    if-eqz p2, :cond_c

    .line 93
    :try_start_2
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_5} :catch_f

    move-result-object v0

    .line 105
    :goto_6
    return-object v0

    .line 94
    :catch_7
    move-exception v0

    .line 95
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    .line 105
    :cond_c
    :goto_c
    const-string v0, ""

    goto :goto_6

    .line 98
    :catch_f
    move-exception v0

    .line 99
    iget-boolean v0, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    if-eqz v0, :cond_c

    goto :goto_c
.end method

.method setDebug(Z)V
    .registers 2

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/mapquest/android/maps/JSONHelper;->debug:Z

    .line 16
    return-void
.end method
