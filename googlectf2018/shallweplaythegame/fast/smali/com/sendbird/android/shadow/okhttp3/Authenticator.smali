.class public interface abstract Lcom/sendbird/android/shadow/okhttp3/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final NONE:Lcom/sendbird/android/shadow/okhttp3/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/Authenticator$1;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/okhttp3/Authenticator$1;-><init>()V

    sput-object v0, Lcom/sendbird/android/shadow/okhttp3/Authenticator;->NONE:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lcom/sendbird/android/shadow/okhttp3/Route;Lcom/sendbird/android/shadow/okhttp3/Response;)Lcom/sendbird/android/shadow/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
