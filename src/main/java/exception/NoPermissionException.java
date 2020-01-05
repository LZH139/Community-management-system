package exception;

public class NoPermissionException extends RuntimeException {

    private static final long serialVersionUID = -4442982597754920924L;

    public NoPermissionException(String msg) {
        super(msg);
    }
}