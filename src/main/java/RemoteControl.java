
public interface RemoteControl {
    int max_volume = 10;
    int min_volume = 0;

    void turnOn();
    void turnOff();
    void setVolume(int volume);

    default void setMute(boolean mute) {
        if (mute) {
            System.out.println("무음처리합니다.");
        } else {
            System.out.println("무음해제합니다.");
        }
    }

    static void changeBattery() {
        System.out.println("건전지를 교체합니다.");
    }
}

