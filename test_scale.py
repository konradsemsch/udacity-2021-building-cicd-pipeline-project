import pytest
import pandas as pd
from app import scale

def test_scale():
    payload = pd.DataFrame.from_dict(
        {
            "CHAS": [0],
            "RM": [6.575],
            "TAX": [296.0],
            "PTRATIO": [15.3],
            "B": [396.9],
            "LSTAT": [4.98],
        }
    )
    scaled_payload = scale(payload)
    assert len(scaled_payload) == 1
    assert len(scaled_payload[0]) == 6