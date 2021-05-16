1.班级之间的比较（同年级）
  各个班级各个学科平均分,最大，最小柱状排序图
  http://localhost:8080/EchartsYearCourseAvgActionHtml?year=2022&courseid=C10006
  http://localhost:8080/EchartsYearCourseMinActionHtml?year=2022&courseid=C10006
  http://localhost:8080/EchartsYearCourseMaxActionHtml?year=2022&courseid=C10006
  
  各个班级各个学科总分平均分,最大，最小柱状排序图
2.个人成绩比较
   单科班级排名
   //http://localhost:8080/EchartsYearCourseAndGradeActionHtml?year=2022&courseid=C10007&gradeid=G10026
   单科年级排名
   //http://localhost:8080/EchartsPersonYearCourseActionHtml?year=2022&courseid=C10006
   
   总分班级排名
   http://localhost:8080/EchartsPersonTotalYearGradeActionHtml?year=2022&gradeid=G10026
   总分年级排名
   http://localhost:8080/EchartsPersonTotalYearActionHtml?year=2022
   
3.自我比较
  单科变化 分数
  http://localhost:8080/EchartsLineCourseHtml?name=%E9%A9%AC%E5%B0%8F%E8%B7%B3&courseid=C10006
  总分变化   
  http://localhost:8080/EchartsLineCourseTotalHtml?name=%E9%A9%AC%E5%B0%8F%E8%B7%B3
  
4.班级self
   班级及格率,优秀率（指定年级，班级。学科，学期） 
   http://localhost:8080/EchartsPieGradeHtml?year=2022&examtype=%E6%9C%9F%E4%B8%AD&gradeid=G10026&courseName=%E6%95%B0%E5%AD%A6   