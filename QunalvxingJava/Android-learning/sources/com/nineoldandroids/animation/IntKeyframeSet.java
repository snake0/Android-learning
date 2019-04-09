package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;

class IntKeyframeSet extends KeyframeSet {
    private int deltaValue;
    private boolean firstTime = true;
    private int firstValue;
    private int lastValue;

    public IntKeyframeSet(IntKeyframe... intKeyframeArr) {
        super(intKeyframeArr);
    }

    public Object getValue(float f) {
        return Integer.valueOf(getIntValue(f));
    }

    public IntKeyframeSet clone() {
        ArrayList arrayList = this.mKeyframes;
        int size = this.mKeyframes.size();
        IntKeyframe[] intKeyframeArr = new IntKeyframe[size];
        for (int i = 0; i < size; i++) {
            intKeyframeArr[i] = (IntKeyframe) ((Keyframe) arrayList.get(i)).clone();
        }
        return new IntKeyframeSet(intKeyframeArr);
    }

    public int getIntValue(float f) {
        int i = 1;
        IntKeyframe intKeyframe;
        IntKeyframe intKeyframe2;
        int intValue;
        int intValue2;
        float fraction;
        float fraction2;
        Interpolator interpolator;
        if (this.mNumKeyframes == 2) {
            if (this.firstTime) {
                this.firstTime = false;
                this.firstValue = ((IntKeyframe) this.mKeyframes.get(0)).getIntValue();
                this.lastValue = ((IntKeyframe) this.mKeyframes.get(1)).getIntValue();
                this.deltaValue = this.lastValue - this.firstValue;
            }
            if (this.mInterpolator != null) {
                f = this.mInterpolator.getInterpolation(f);
            }
            if (this.mEvaluator == null) {
                return this.firstValue + ((int) (((float) this.deltaValue) * f));
            }
            return ((Number) this.mEvaluator.evaluate(f, Integer.valueOf(this.firstValue), Integer.valueOf(this.lastValue))).intValue();
        } else if (f <= 0.0f) {
            intKeyframe = (IntKeyframe) this.mKeyframes.get(0);
            intKeyframe2 = (IntKeyframe) this.mKeyframes.get(1);
            intValue = intKeyframe.getIntValue();
            intValue2 = intKeyframe2.getIntValue();
            fraction = intKeyframe.getFraction();
            fraction2 = intKeyframe2.getFraction();
            interpolator = intKeyframe2.getInterpolator();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            fraction = (f - fraction) / (fraction2 - fraction);
            return this.mEvaluator == null ? ((int) (fraction * ((float) (intValue2 - intValue)))) + intValue : ((Number) this.mEvaluator.evaluate(fraction, Integer.valueOf(intValue), Integer.valueOf(intValue2))).intValue();
        } else if (f >= 1.0f) {
            intKeyframe = (IntKeyframe) this.mKeyframes.get(this.mNumKeyframes - 2);
            intKeyframe2 = (IntKeyframe) this.mKeyframes.get(this.mNumKeyframes - 1);
            intValue = intKeyframe.getIntValue();
            intValue2 = intKeyframe2.getIntValue();
            fraction = intKeyframe.getFraction();
            fraction2 = intKeyframe2.getFraction();
            interpolator = intKeyframe2.getInterpolator();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            fraction = (f - fraction) / (fraction2 - fraction);
            return this.mEvaluator == null ? ((int) (fraction * ((float) (intValue2 - intValue)))) + intValue : ((Number) this.mEvaluator.evaluate(fraction, Integer.valueOf(intValue), Integer.valueOf(intValue2))).intValue();
        } else {
            intKeyframe = (IntKeyframe) this.mKeyframes.get(0);
            while (true) {
                IntKeyframe intKeyframe3 = intKeyframe;
                if (i >= this.mNumKeyframes) {
                    return ((Number) ((Keyframe) this.mKeyframes.get(this.mNumKeyframes - 1)).getValue()).intValue();
                }
                intKeyframe = (IntKeyframe) this.mKeyframes.get(i);
                if (f < intKeyframe.getFraction()) {
                    interpolator = intKeyframe.getInterpolator();
                    if (interpolator != null) {
                        f = interpolator.getInterpolation(f);
                    }
                    float fraction3 = (f - intKeyframe3.getFraction()) / (intKeyframe.getFraction() - intKeyframe3.getFraction());
                    intValue = intKeyframe3.getIntValue();
                    int intValue3 = intKeyframe.getIntValue();
                    return this.mEvaluator == null ? ((int) (((float) (intValue3 - intValue)) * fraction3)) + intValue : ((Number) this.mEvaluator.evaluate(fraction3, Integer.valueOf(intValue), Integer.valueOf(intValue3))).intValue();
                } else {
                    i++;
                }
            }
        }
    }
}
