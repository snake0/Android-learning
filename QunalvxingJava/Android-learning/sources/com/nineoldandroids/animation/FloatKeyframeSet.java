package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;

class FloatKeyframeSet extends KeyframeSet {
    private float deltaValue;
    private boolean firstTime = true;
    private float firstValue;
    private float lastValue;

    public FloatKeyframeSet(FloatKeyframe... floatKeyframeArr) {
        super(floatKeyframeArr);
    }

    public Object getValue(float f) {
        return Float.valueOf(getFloatValue(f));
    }

    public FloatKeyframeSet clone() {
        ArrayList arrayList = this.mKeyframes;
        int size = this.mKeyframes.size();
        FloatKeyframe[] floatKeyframeArr = new FloatKeyframe[size];
        for (int i = 0; i < size; i++) {
            floatKeyframeArr[i] = (FloatKeyframe) ((Keyframe) arrayList.get(i)).clone();
        }
        return new FloatKeyframeSet(floatKeyframeArr);
    }

    public float getFloatValue(float f) {
        int i = 1;
        FloatKeyframe floatKeyframe;
        FloatKeyframe floatKeyframe2;
        float floatValue;
        float floatValue2;
        float fraction;
        float fraction2;
        Interpolator interpolator;
        if (this.mNumKeyframes == 2) {
            if (this.firstTime) {
                this.firstTime = false;
                this.firstValue = ((FloatKeyframe) this.mKeyframes.get(0)).getFloatValue();
                this.lastValue = ((FloatKeyframe) this.mKeyframes.get(1)).getFloatValue();
                this.deltaValue = this.lastValue - this.firstValue;
            }
            if (this.mInterpolator != null) {
                f = this.mInterpolator.getInterpolation(f);
            }
            if (this.mEvaluator == null) {
                return this.firstValue + (this.deltaValue * f);
            }
            return ((Number) this.mEvaluator.evaluate(f, Float.valueOf(this.firstValue), Float.valueOf(this.lastValue))).floatValue();
        } else if (f <= 0.0f) {
            floatKeyframe = (FloatKeyframe) this.mKeyframes.get(0);
            floatKeyframe2 = (FloatKeyframe) this.mKeyframes.get(1);
            floatValue = floatKeyframe.getFloatValue();
            floatValue2 = floatKeyframe2.getFloatValue();
            fraction = floatKeyframe.getFraction();
            fraction2 = floatKeyframe2.getFraction();
            interpolator = floatKeyframe2.getInterpolator();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            fraction = (f - fraction) / (fraction2 - fraction);
            return this.mEvaluator == null ? (fraction * (floatValue2 - floatValue)) + floatValue : ((Number) this.mEvaluator.evaluate(fraction, Float.valueOf(floatValue), Float.valueOf(floatValue2))).floatValue();
        } else if (f >= 1.0f) {
            floatKeyframe = (FloatKeyframe) this.mKeyframes.get(this.mNumKeyframes - 2);
            floatKeyframe2 = (FloatKeyframe) this.mKeyframes.get(this.mNumKeyframes - 1);
            floatValue = floatKeyframe.getFloatValue();
            floatValue2 = floatKeyframe2.getFloatValue();
            fraction = floatKeyframe.getFraction();
            fraction2 = floatKeyframe2.getFraction();
            interpolator = floatKeyframe2.getInterpolator();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            fraction = (f - fraction) / (fraction2 - fraction);
            return this.mEvaluator == null ? (fraction * (floatValue2 - floatValue)) + floatValue : ((Number) this.mEvaluator.evaluate(fraction, Float.valueOf(floatValue), Float.valueOf(floatValue2))).floatValue();
        } else {
            floatKeyframe = (FloatKeyframe) this.mKeyframes.get(0);
            while (true) {
                FloatKeyframe floatKeyframe3 = floatKeyframe;
                if (i >= this.mNumKeyframes) {
                    return ((Number) ((Keyframe) this.mKeyframes.get(this.mNumKeyframes - 1)).getValue()).floatValue();
                }
                floatKeyframe = (FloatKeyframe) this.mKeyframes.get(i);
                if (f < floatKeyframe.getFraction()) {
                    interpolator = floatKeyframe.getInterpolator();
                    if (interpolator != null) {
                        f = interpolator.getInterpolation(f);
                    }
                    float fraction3 = (f - floatKeyframe3.getFraction()) / (floatKeyframe.getFraction() - floatKeyframe3.getFraction());
                    floatValue = floatKeyframe3.getFloatValue();
                    fraction = floatKeyframe.getFloatValue();
                    return this.mEvaluator == null ? ((fraction - floatValue) * fraction3) + floatValue : ((Number) this.mEvaluator.evaluate(fraction3, Float.valueOf(floatValue), Float.valueOf(fraction))).floatValue();
                } else {
                    i++;
                }
            }
        }
    }
}
