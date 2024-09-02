from fastapi import Depends, APIRouter, HTTPException, status
from typing import Annotated
from schemas.auth import DecodedToken
from auth import get_current_user

UserDependency = Annotated[DecodedToken, Depends(get_current_user)]
router = APIRouter(prefix="/systeminfo", tags=["systeminfo"])

# システム情報  取得
@router.get('/get_systeminfo', status_code=status.HTTP_200_OK)
async def get_systeminfo(user: UserDependency):

    # 権限チェック
    if user.admin != True:
        raise HTTPException(status_code=403, detail="No authority")

    return {
        "backend_version": "ver:1.0",
        "database_version": "ver:1.0"
    }
