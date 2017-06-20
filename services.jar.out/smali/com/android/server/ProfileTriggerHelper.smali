.class public Lcom/android/server/ProfileTriggerHelper;
.super Landroid/content/BroadcastReceiver;
.source "ProfileTriggerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileTriggerService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastConnectedSSID:Ljava/lang/String;

.field private mService:Lcom/android/server/ProfileManagerService;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ProfileManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/ProfileManagerService;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/server/ProfileTriggerHelper;->mService:Lcom/android/server/ProfileManagerService;

    .line 45
    iget-object v1, p0, Lcom/android/server/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/ProfileTriggerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 46
    invoke-direct {p0}, Lcom/android/server/ProfileTriggerHelper;->getActiveSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/android/server/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    return-void
.end method

.method private checkTriggers(ILjava/lang/String;I)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "newState"    # I

    .prologue
    .line 81
    iget-object v3, p0, Lcom/android/server/ProfileTriggerHelper;->mService:Lcom/android/server/ProfileManagerService;

    invoke-virtual {v3}, Lcom/android/server/ProfileManagerService;->getProfileList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Profile;

    .line 82
    .local v2, "p":Landroid/app/Profile;
    invoke-virtual {v2, p1, p2}, Landroid/app/Profile;->getTrigger(ILjava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/android/server/ProfileTriggerHelper;->mService:Lcom/android/server/ProfileManagerService;

    invoke-virtual {v3}, Lcom/android/server/ProfileManagerService;->getActiveProfile()Landroid/app/Profile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 87
    .local v0, "currentProfileUuid":Ljava/util/UUID;
    invoke-virtual {v2}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/android/server/ProfileTriggerHelper;->mService:Lcom/android/server/ProfileManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)V

    goto :goto_0

    .line 91
    .end local v0    # "currentProfileUuid":Ljava/util/UUID;
    .end local v2    # "p":Landroid/app/Profile;
    :cond_1
    return-void
.end method

.method private getActiveSSID()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v3, p0, Lcom/android/server/ProfileTriggerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 95
    .local v1, "wifiinfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object v2

    .line 98
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v0

    .line 99
    .local v0, "ssid":Landroid/net/wifi/WifiSsid;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 60
    invoke-direct {p0}, Lcom/android/server/ProfileTriggerHelper;->getActiveSSID()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "activeSSID":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 64
    const/4 v3, 0x0

    .line 65
    .local v3, "triggerState":I
    iput-object v1, p0, Lcom/android/server/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    .line 69
    :goto_0
    iget-object v5, p0, Lcom/android/server/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v3}, Lcom/android/server/ProfileTriggerHelper;->checkTriggers(ILjava/lang/String;I)V

    .line 78
    .end local v1    # "activeSSID":Ljava/lang/String;
    .end local v3    # "triggerState":I
    :cond_0
    :goto_1
    return-void

    .line 67
    .restart local v1    # "activeSSID":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    .restart local v3    # "triggerState":I
    goto :goto_0

    .line 70
    .end local v1    # "activeSSID":Ljava/lang/String;
    .end local v3    # "triggerState":I
    :cond_2
    const-string v6, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 72
    :cond_3
    const-string v6, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    .line 74
    .restart local v3    # "triggerState":I
    :goto_2
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 76
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4, v3}, Lcom/android/server/ProfileTriggerHelper;->checkTriggers(ILjava/lang/String;I)V

    goto :goto_1

    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "triggerState":I
    :cond_4
    move v3, v5

    .line 72
    goto :goto_2
.end method
