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

# 로그를 그래프 형태로 조회
git log --graph

# 전체 이력 조회
git log --all

# 원격 저장소로 업로드
git push origin 브랜치명

# 충돌 무시하고 강제 push
# 1. 충돌 발생 > 원격 내용 pull 로 가져오기 > 내 로컬 파일과 비교 > merge
# 2. 충돌 발생 > 로컬 기준으로 강제 push > git push --force
git push origin master --force # 충돌 무시하고 강제 push

# 특정 commit ID로의 전환
git checkout 커밋ID

# 다시 현재의 master(현재 브랜치)의 commit으로 return
git checkout master

# git pull은 원격의 변경사항을 local로 다운로드
git pull origin 브랜치명 # main일 때는 git pull 로만 가능

# git 작업 취소
# working directory 에서 수정사항만 취소
git checkout .
# working directory 에서 추가 파일 취소
git clean --fdx
# 수정 / 취소 동시에
git checkout . | git clean --fdx
# staging area 에서의 취소
git reset
# commit 이후의 취소
git reset HEAD~1
git reset HEAD^
# push 이후의 취소
git revert 커밋ID

# 버전 별 비교 명령어 : diff
# A를 기준으로 B가 어떤 변경이 있는지를 비교
# git log 에서 commitId 비교
git diff A B
git diff commitId1 commitId2
git diff A브랜치 B브랜치


# git fetch
# 원격의 변경사항을 로컬에 가져오되 병합은 하지 않는 것.
# 비교 : git pull origin master 와 git fetch origin master 비교

git stash # 작업 중인 사항을 임시 저장하는 명령어
git stash pop # 저장한 작업 목록 꺼내기 (가장 최신의 작업 목록. 꺼내면서 없어짐)
git stash apply stash@인덱스값 # 저장한 목록은 놔둔 채 작업 목록 적용
git stash list # 저장한 작업 사항 목록 조회
git stash show -p 인덱스 # 저장한 작업 목록 상세 조회
git stash clear # 저장한 stash 목록 전체 삭제