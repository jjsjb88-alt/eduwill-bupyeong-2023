#!/usr/bin/env bash
# ⛔⛔ 이 폴더는 «폐기»됐다. 이 스크립트는 아무것도 하지 않는다.
#
# 2023 해설집의 «진짜» 배포 경로는 2022 저장소의 하위 폴더다:
#     /c/Users/jbseo/Desktop/exam-dist-2022/배포_2023.sh
#     → https://jbseo-commits.github.io/eduwill-bupyeong-2022/2023/
# 2023 전용 저장소를 따로 만들지 않은 것은 2026-09-03 사용자 결정이다.
#
# 🔴 왜 이 파일을 막았나 — 2026-09-07 에 개인계정 세션이 «이 폴더»를 골라 돌렸다.
#    폴더 이름이 `exam-dist-2023` 이라 그럴듯해 보였다. 실제로는
#      · remote 가 `jjsjb88-alt`(개인 백업계정) → 403 으로 죽어 있다
#      · 검사가 2026-08-31 사고 이전 판이다 — 공통 관문을 안 부르고 `PYTHONIOENCODING` 도 없다
#        (그래서 `cp949` 가 `✅` 를 못 써 UnicodeEncodeError 로 죽었다. 다행히 복사 «전»이었다)
#    폐기 사실은 `exam-dist-2022/배포_2023.sh` 머리말에 «이미» 적혀 있었다.
#    그 문서를 안 보고 폴더 이름만 보고 골랐다. 그래서 이제 «파일이 직접» 막는다.
#
# 📌 종전 내용은 `배포.sh.폐기_백업` 에 남겼다. 되살릴 일은 없어야 한다.

echo "⛔ exam-dist-2023/ 은 폐기된 폴더다. 이 스크립트는 배포하지 않는다."
echo
echo "   2023 은 «2022 저장소의 하위 경로»로 나간다:"
echo "     ./배포_2023.sh"
echo "     → https://jbseo-commits.github.io/eduwill-bupyeong-2022/2023/"
echo
echo "   이 폴더의 remote 는 jjsjb88-alt(개인 백업계정)라 403 으로 죽어 있다."
echo "   근거: exam-dist-2022/배포_2023.sh 머리말 · 2026-09-03 사용자 결정."
exit 1
