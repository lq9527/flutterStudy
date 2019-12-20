package com.example.flutter666;


import android.os.Bundle;
import android.util.Log;


import io.flutter.app.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugins.GeneratedPluginRegistrant;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

/**
 * @author liqiang
 * @date 2019-12-18 01:42
 * @des
 */
public class MainActivity_BAK1 extends FlutterActivity {
    private static final String channel = "add";
    private int count = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.e("flutter", "MainActivity onCreate");

        new MethodChannel(getFlutterView(), channel).setMethodCallHandler(
                new MethodCallHandler() {
                    @Override
                    public void onMethodCall(MethodCall methodCall, Result result) {
                        if (methodCall.method.equals("getNumber")) {
                            result.success(getNumber());
                        } else {
                            result.notImplemented();
                        }
                    }
                }
        );
    }

    //数字自增方法
    private int getNumber() {
        return ++count;
    }
}
