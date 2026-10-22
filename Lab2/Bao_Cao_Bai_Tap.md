# BÁO CÁO THỰC HÀNH LAB 2: DEVOPS & CALMS

- **Họ và tên:** Chu Thị Ngọc Yến
- **MSSV:** DTC235180201
- **Lớp:** KTPM K22C

---

## BƯỚC 2: AUTOMATION

### 2.1 Giải pháp cho bài toán tối ưu thời gian setup môi trường
**Giải pháp:** Viết kịch bản tự động hóa (`setup-dev-env.sh`) để tự động khởi tạo cấu trúc thư mục, sinh file cấu hình (`package.json`, `server.js`) và cài đặt các dependencies chỉ bằng 1 câu lệnh duy nhất.

---

## BƯỚC 3: LEAN VỚI DOCKER

### 3.3 Thảo luận: Chạy Docker Image trên máy developer khác
**Trả lời:** Khi gửi Docker image `devops-lab2-app` cho developer khác, họ chỉ cần chạy lệnh `docker run` là ứng dụng sẽ khởi chạy ngay lập tức[cite: 1]. Kết quả hiển thị giống hệt 100% so với trên máy gốc vì môi trường (Node.js Alpine Linux) đã được đóng gói cố định bên trong container[cite: 1].

---

## BƯỚC 4: DEVOPS TOOLCHAIN MAP & CALMS

### 4.2 Bảng công cụ DevOps đã học
| Giai đoạn | Công cụ | Đã dùng ở lab nào? | Mục đích |
|-----------|---------|:---:|----------|
| Plan | GitHub Projects | Lab 1 | Quản lý task, roadmap |
| Code | Git + GitHub | Lab 1, 5 | Quản lý mã nguồn |
| Code | VS Code | Lab 2 | IDE phát triển ứng dụng |
| Build | Maven | Lab 7 | Build Java project |
| Test | Postman/Newman | Lab 6 | Kiểm thử API |
| Test | SonarQube | Lab 6, 7 | Phân tích mã nguồn tĩnh |
| Test | OWASP ZAP | Lab 6 | Kiểm thử bảo mật |
| Deploy | Docker | Lab 2, 7, 8 | Container hóa ứng dụng |
| Deploy | Terraform | Lab 3 | Infrastructure as Code |
| Deploy | AWS | Lab 3 | Cloud infrastructure |
| CI/CD | GitHub Actions | Lab 1 | Tự động deploy web |
| CI/CD | Jenkins | Lab 7 | CI/CD pipeline |
| Artifact | Nexus | Lab 7 | Quản lý artifact |

### 4.3 CALMS trong thực tế
| Nguyên tắc | Bạn đã làm gì? | Lab nào? |
|-----------|---------------|:---:|
| Culture | Team workflow với Git Flow + Code Review | Lab 5 |
| Automation | CI/CD pipeline tự động deploy website | Lab 1 |
| Automation | Script `devops-check.sh` & `setup-dev-env.sh` khởi tạo môi trường tự động | Lab 2 |
| Lean | Docker — môi trường nhất quán mọi nơi | Lab 2 |
| Lean | Infrastructure as Code — không cấu hình thủ công | Lab 3 |
| Measurement | Test reports (Newman, SonarQube metrics) | Lab 6 |
| Measurement | Pipeline duration, success rate | Lab 7 |
| Sharing | Code Review trên GitHub | Lab 5 |
| Sharing | Toolchain map — chia sẻ kiến thức quy trình | Lab 2 |

---

## BƯỚC 5: CALMS SELF-ASSESSMENT

### 5.1 Tự đánh giá DevOps Maturity
| Nguyên tắc | Điểm của bạn |
|-----------|:---:|
| Culture | 4/5 |
| Automation | 4/5 |
| Lean | 4/5 |
| Measurement | 3/5 |
| Sharing | 4/5 |
| **TỔNG** | **19/25** |

### 5.2 Kế hoạch cải thiện (3 hành động)
1. **Automation:** Tự động hóa hoàn toàn các bước kiểm thử đơn vị và đóng gói Docker Image bằng GitHub Actions mỗi khi push code[cite: 1].
2. **Measurement:** Tích hợp công cụ giám sát hiệu năng và theo dõi log hệ thống tập trung (Prometheus & Grafana) cho ứng dụng[cite: 1].
3. **Sharing:** Thiết lập quy trình Pull Request bắt buộc phải có ít nhất 1 người review (Peer Review) trước khi merge code[cite: 1].