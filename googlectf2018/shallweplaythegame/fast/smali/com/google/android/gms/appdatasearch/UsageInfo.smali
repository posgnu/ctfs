.class public Lcom/google/android/gms/appdatasearch/UsageInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/zzj;


# instance fields
.field final mVersionCode:I

.field final zzaak:Lcom/google/android/gms/appdatasearch/DocumentId;

.field final zzaal:J

.field zzaam:I

.field final zzaan:Lcom/google/android/gms/appdatasearch/DocumentContents;

.field final zzaao:Z

.field zzaap:I

.field zzaaq:I

.field public final zzwM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/UsageInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/zzj;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZII)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzaak:Lcom/google/android/gms/appdatasearch/DocumentId;

    iput-wide p3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzaal:J

    iput p5, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzaam:I

    iput-object p6, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzwM:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzaan:Lcom/google/android/gms/appdatasearch/DocumentContents;

    iput-boolean p8, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzaao:Z

    iput p9, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzaap:I

    iput p10, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzaaq:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZII)V
    .locals 12

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/appdatasearch/UsageInfo;-><init>(ILcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZII)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZIILcom/google/android/gms/appdatasearch/UsageInfo$1;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/appdatasearch/UsageInfo;-><init>(Lcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;I)V"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zza(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/appdatasearch/DocumentId;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p2 .. p6}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zzoH()Lcom/google/android/gms/appdatasearch/DocumentContents;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v1, p0

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/appdatasearch/UsageInfo;-><init>(ILcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZII)V

    return-void
.end method

.method public static zza(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;)",
            "Lcom/google/android/gms/appdatasearch/DocumentContents$zza;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzch(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzj(Landroid/net/Uri;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    :cond_0
    if-eqz p4, :cond_1

    invoke-static {p4}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzu(Ljava/util/List;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "intent_action"

    invoke-static {v2, v1}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "intent_data"

    invoke-static {v2, v1}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "intent_activity"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "intent_extra_data_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "intent_extra_data"

    invoke-static {v2, v1}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    :cond_5
    invoke-virtual {v0, p3}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zzcd(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zzT(Z)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/appdatasearch/DocumentId;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentId;

    move-result-object v0

    return-object v0
.end method

.method private static zzch(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/google/android/gms/appdatasearch/DocumentSection;

    new-instance v1, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    const-string v2, "title"

    invoke-direct {v1, v2}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzaD(I)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzV(Z)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzcg(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzoK()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v1

    const-string v2, "text1"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/appdatasearch/DocumentSection;-><init>(Ljava/lang/String;Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;Ljava/lang/String;)V

    return-object v0
.end method

.method private static zzg(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static zzj(Landroid/net/Uri;)Lcom/google/android/gms/appdatasearch/DocumentSection;
    .locals 4

    new-instance v0, Lcom/google/android/gms/appdatasearch/DocumentSection;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    const-string v3, "web_url"

    invoke-direct {v2, v3}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzaD(I)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzU(Z)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzcg(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzoK()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/appdatasearch/DocumentSection;-><init>(Ljava/lang/String;Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;)V

    return-object v0
.end method

.method private static zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentId;
    .locals 2

    new-instance v0, Lcom/google/android/gms/appdatasearch/DocumentId;

    const-string v1, ""

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/appdatasearch/DocumentId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;
    .locals 3

    new-instance v0, Lcom/google/android/gms/appdatasearch/DocumentSection;

    new-instance v1, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzU(Z)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzoK()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/gms/appdatasearch/DocumentSection;-><init>(Ljava/lang/String;Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;Ljava/lang/String;)V

    return-object v0
.end method

.method private static zzu(Ljava/util/List;)Lcom/google/android/gms/appdatasearch/DocumentSection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;)",
            "Lcom/google/android/gms/appdatasearch/DocumentSection;"
        }
    .end annotation

    new-instance v2, Lcom/google/android/gms/internal/zzsj$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzsj$zza;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lcom/google/android/gms/internal/zzsj$zza$zza;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzsj$zza$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsj$zza$zza;-><init>()V

    aput-object v0, v3, v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;

    aget-object v4, v3, v1

    iget-object v5, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->appIndexingUrl:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/zzsj$zza$zza;->zzaTA:Ljava/lang/String;

    aget-object v4, v3, v1

    iget v5, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->viewId:I

    iput v5, v4, Lcom/google/android/gms/internal/zzsj$zza$zza;->viewId:I

    iget-object v4, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->webUrl:Landroid/net/Uri;

    if-eqz v4, :cond_0

    aget-object v4, v3, v1

    iget-object v0, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->webUrl:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/zzsj$zza$zza;->zzaTB:Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput-object v3, v2, Lcom/google/android/gms/internal/zzsj$zza;->zzaTy:[Lcom/google/android/gms/internal/zzsj$zza$zza;

    new-instance v0, Lcom/google/android/gms/appdatasearch/DocumentSection;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzamj;->toByteArray(Lcom/google/android/gms/internal/zzamj;)[B

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    const-string v3, "outlinks"

    invoke-direct {v2, v3}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzU(Z)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v2

    const-string v3, ".private:outLinks"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzcg(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v2

    const-string v3, "blob"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzcf(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzoK()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/appdatasearch/DocumentSection;-><init>([BLcom/google/android/gms/appdatasearch/RegisterSectionInfo;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "UsageInfo[documentId=%s, timestamp=%d, usageType=%d, status=%d]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzaak:Lcom/google/android/gms/appdatasearch/DocumentId;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzaal:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzaam:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzaaq:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/UsageInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/zzj;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/zzj;->zza(Lcom/google/android/gms/appdatasearch/UsageInfo;Landroid/os/Parcel;I)V

    return-void
.end method