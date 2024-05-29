# git 프로젝트 생성 방법 두 가지
# 1. 원격 repo 생성 후 clone

# 2. local 에서부터 이미 개발된 프로젝트가 존재시 github 업로드
git init # 해당 프로젝트 경로에 .git 폴더 생성
git add . # 모든 변경사항을 staging area로 이동
git commit -m "메세지" # staging area의 변경사항을 확정 짓고 commitID 생성
git push origin 브랜치명 # 원격(github) repo에 upload

#github 인증 방법 두 가지
# 1. token 방식 : github에서 직접 보안키(token) 발급

# 2. 제 3자 인증 방식 (oauth)


# 원격지 주소를 생성 및 추가
# 원격지 주소 추가 명령어
git remote add origin 레포주소
# 원격지 주소 삭제
git remote remove origin 
# 원격지 주소 변경
git remote set-url origin 레포주소

# git 설정 정보 조회
git config --list