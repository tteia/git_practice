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

# clone 실습 - 타인 repo clone 방법 두 가지
# 1. commit ID를 유지한 채 가져가기 *커밋 이력 그대로 가져오기 => 팀원들과 프로젝트 진행 후 가져올 때! 커밋 기록까지 다 가져오니까 바로 push
git clone 타인 레포 주소
# 해당 폴더 열기 후 git 명령어
git remote set-url origin 내 레포주소
git push origin master(또는 main) # 별도의 add commit 필요없이 바로 push

# 2. commit ID 전부 없애고 내 레포인 것처럼 가져가기 *커밋 이력 없이 가져오기
git clone 타인 레포 주소
# 해당 폴더 열기 후
.git 폴더 삭제
git init
git remote add origin 내 레포주소
git add .
git commit -m ""
git push origin master