.class Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGetInstallReferrerService.java"

# interfaces
.implements Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 78
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInstallReferrer(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "paramaters"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 106
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 109
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 110
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 119
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_1

    .line 123
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_1
    const/4 v2, 0x0

    .line 127
    .restart local v2    # "_result":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 129
    nop

    .line 130
    return-object v2

    .line 127
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 85
    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    return-object v0
.end method
