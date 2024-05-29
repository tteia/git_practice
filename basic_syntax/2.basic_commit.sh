# 현재 working dirctory, staging area 만! 상태 확인
git status

# git add
git add . # 모든 수정 / 추가 사항 add
git add 특정파일(위치포함) # 특정 파일 add
git add testfolder/test2.txt

# commit 이력 확인(local repository의 이력)
git log

# local repository 에 반영 및 커밋 이력 생성
git commit -m "메세지 타이틀" -m "메세지 내용"

# vi 모드에서 작성 : git commit 후 엔터
# 첫 줄 > 제목 / 이후 작성 > 내용

# add와 commit 을 동시에
git commit -am "메세지 내용"

# git log 간결하게
git log --oneline

# 전체 이력 조회
git log --all

# 원격 저장소로 업로드
git push origin 브런치명

# 충돌 무시하고 강제 push