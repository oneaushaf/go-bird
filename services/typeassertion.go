package services

import (
    "fmt"
    "reflect"
)

func AnyToUint(value any) (uint, error) {
    switch v := value.(type) {
    case int:
        if v < 0 {
            return 0, fmt.Errorf("negative value cannot be converted to uint")
        }
        return uint(v), nil
    case int8:
        if v < 0 {
            return 0, fmt.Errorf("negative value cannot be converted to uint")
        }
        return uint(v), nil
    case int16:
        if v < 0 {
            return 0, fmt.Errorf("negative value cannot be converted to uint")
        }
        return uint(v), nil
    case int32:
        if v < 0 {
            return 0, fmt.Errorf("negative value cannot be converted to uint")
        }
        return uint(v), nil
    case int64:
        if v < 0 {
            return 0, fmt.Errorf("negative value cannot be converted to uint")
        }
        return uint(v), nil
    case uint:
        return v, nil
    case uint8:
        return uint(v), nil
    case uint16:
        return uint(v), nil
    case uint32:
        return uint(v), nil
    case uint64:
        return uint(v), nil
    case float32:
        if v < 0 {
            return 0, fmt.Errorf("negative value cannot be converted to uint")
        }
        return uint(v), nil
    case float64:
        if v < 0 {
            return 0, fmt.Errorf("negative value cannot be converted to uint")
        }
        return uint(v), nil
    case string:
        var u uint
        _, err := fmt.Sscanf(v, "%d", &u)
        if err != nil {
            return 0, fmt.Errorf("cannot convert string to uint: %v", err)
        }
        return u, nil
    default:
        return 0, fmt.Errorf("unsupported type: %v", reflect.TypeOf(value))
    }
}