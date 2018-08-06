.class final Lcom/sendbird/android/shadow/okhttp3/Authenticator$1;
.super Ljava/lang/Object;
.source "Authenticator.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lcom/sendbird/android/shadow/okhttp3/Route;Lcom/sendbird/android/shadow/okhttp3/Response;)Lcom/sendbird/android/shadow/okhttp3/Request;
    .locals 1
    .param p1, "route"    # Lcom/sendbird/android/shadow/okhttp3/Route;
    .param p2, "response"    # Lcom/sendbird/android/shadow/okhttp3/Response;

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method
