.class public final Lorg/parceler/InjectionUtil;
.super Ljava/lang/Object;
.source "InjectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;,
        Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;,
        Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;,
        Lorg/parceler/InjectionUtil$SetFieldPrivilegedAction;,
        Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction;
    }
.end annotation


# static fields
.field public static final CALL_CONSTRUCTOR_METHOD:Ljava/lang/String; = "callConstructor"

.field public static final CALL_METHOD_METHOD:Ljava/lang/String; = "callMethod"

.field public static final GET_FIELD_METHOD:Ljava/lang/String; = "getField"

.field public static final SET_FIELD_METHOD:Ljava/lang/String; = "setField"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static callConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "argClasses"    # [Ljava/lang/Class;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 185
    .local v0, "classConstructor":Ljava/lang/reflect/Constructor;
    new-instance v3, Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;

    const/4 v4, 0x0

    invoke-direct {v3, v0, p2, v4}, Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;-><init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lorg/parceler/InjectionUtil$1;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 195
    .local v2, "output":Ljava/lang/Object;, "TT;"
    return-object v2

    .line 188
    .end local v0    # "classConstructor":Ljava/lang/reflect/Constructor;
    .end local v2    # "output":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Lorg/parceler/ParcelerRuntimeException;

    const-string v4, "Exception during method injection: NoSuchMethodException"

    invoke-direct {v3, v4, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 190
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 191
    .local v1, "e":Ljava/security/PrivilegedActionException;
    new-instance v3, Lorg/parceler/ParcelerRuntimeException;

    const-string v4, "PrivilegedActionException Exception during field injection"

    invoke-direct {v3, v4, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 192
    .end local v1    # "e":Ljava/security/PrivilegedActionException;
    :catch_2
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/parceler/ParcelerRuntimeException;

    const-string v4, "Exception during field injection"

    invoke-direct {v3, v4, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public static callMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "argClasses"    # [Ljava/lang/Class;
    .param p5, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "retClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 141
    .local v0, "classMethod":Ljava/lang/reflect/Method;
    new-instance v2, Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, p5, v3}, Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;Lorg/parceler/InjectionUtil$1;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    return-object v2

    .line 144
    .end local v0    # "classMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lorg/parceler/ParcelerRuntimeException;

    const-string v3, "Exception during method injection: NoSuchFieldException"

    invoke-direct {v2, v3, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 146
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 147
    .local v1, "e":Ljava/security/PrivilegedActionException;
    new-instance v2, Lorg/parceler/ParcelerRuntimeException;

    const-string v3, "PrivilegedActionException Exception during field injection"

    invoke-direct {v2, v3, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 148
    .end local v1    # "e":Ljava/security/PrivilegedActionException;
    :catch_2
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/parceler/ParcelerRuntimeException;

    const-string v3, "Exception during field injection"

    invoke-direct {v2, v3, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 53
    .local v0, "declaredField":Ljava/lang/reflect/Field;
    new-instance v2, Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, v3}, Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Lorg/parceler/InjectionUtil$1;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    return-object v2

    .line 56
    .end local v0    # "declaredField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Lorg/parceler/ParcelerRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchFieldException Exception during field injection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 59
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 60
    .local v1, "e":Ljava/security/PrivilegedActionException;
    new-instance v2, Lorg/parceler/ParcelerRuntimeException;

    const-string v3, "PrivilegedActionException Exception during field injection"

    invoke-direct {v2, v3, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 61
    .end local v1    # "e":Ljava/security/PrivilegedActionException;
    :catch_2
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/parceler/ParcelerRuntimeException;

    const-string v3, "Exception during field injection"

    invoke-direct {v2, v3, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public static setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 93
    .local v0, "classField":Ljava/lang/reflect/Field;
    new-instance v2, Lorg/parceler/InjectionUtil$SetFieldPrivilegedAction;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, p3, v3}, Lorg/parceler/InjectionUtil$SetFieldPrivilegedAction;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Lorg/parceler/InjectionUtil$1;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 104
    return-void

    .line 96
    .end local v0    # "classField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Lorg/parceler/ParcelerRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchFieldException Exception during field injection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 99
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, "e":Ljava/security/PrivilegedActionException;
    new-instance v2, Lorg/parceler/ParcelerRuntimeException;

    const-string v3, "PrivilegedActionException Exception during field injection"

    invoke-direct {v2, v3, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 101
    .end local v1    # "e":Ljava/security/PrivilegedActionException;
    :catch_2
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/parceler/ParcelerRuntimeException;

    const-string v3, "Exception during field injection"

    invoke-direct {v2, v3, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
