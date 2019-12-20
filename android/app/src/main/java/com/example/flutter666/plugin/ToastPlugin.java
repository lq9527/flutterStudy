package com.example.flutter666.plugin;

/**
 * @author liqiang
 * @date 2019-12-18 15:47
 * @des
 */

import android.content.Context;
import android.util.Log;
import android.widget.Toast;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;

public class ToastPlugin implements MethodChannel.MethodCallHandler, EventChannel.StreamHandler, FlutterPlugin {

    private Context applicationContext;
    private MethodChannel methodChannel;

    /**
     * Plugin registration.
     */
    public static void registerWith(PluginRegistry.Registrar registrar) {
        final ToastPlugin instance = new ToastPlugin();
        instance.onAttachedToEngine(registrar.context(), registrar.messenger());
        Log.d("flutter","ToastPlugin registerWith");
    }

    @Override
    public void onAttachedToEngine(FlutterPluginBinding binding) {
        onAttachedToEngine(
                binding.getApplicationContext(), binding.getFlutterEngine().getDartExecutor());
    }

    private void onAttachedToEngine(Context applicationContext, BinaryMessenger messenger) {
        this.applicationContext = applicationContext;
        methodChannel = new MethodChannel(messenger, "plugins.flutter.io/lq_toast");
        methodChannel.setMethodCallHandler(this);

        Log.d("flutter","ToastPlugin onAttachedToEngine");
    }

    @Override
    public void onDetachedFromEngine(FlutterPluginBinding binding) {
        applicationContext = null;
        methodChannel.setMethodCallHandler(null);
        methodChannel = null;
    }


    @Override
    public void onListen(Object arguments, EventChannel.EventSink events) {
    }

    @Override
    public void onCancel(Object arguments) {
    }

    @Override
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if (methodCall.method.equals("showToast")) {
            Toast.makeText(applicationContext, "toast from java", Toast.LENGTH_SHORT).show();
            result.success(1);
        } else {
            result.notImplemented();
        }
    }
}
