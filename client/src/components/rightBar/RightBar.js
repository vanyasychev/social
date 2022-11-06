import "./rightBar.scss";

const RightBar = () => {
  return (
    <div className={"rightBar"}>
      <div className={"container"}>
        <div className={"item"}>
          <span>Suggestions For You</span>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img src={"https://i.ibb.co/rxCQ5q5/Guacamole.png"} alt={""} />
              <span>Julia Kalich</span>
            </div>
            <div className={"buttons"}>
              <button>Follow</button>
              <button>Dismiss</button>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img
                src={"https://i.ibb.co/FDpvGzw/Delivery-boy-2.png"}
                alt={""}
              />
              <span>Egor Blagochevsky</span>
            </div>
            <div className={"buttons"}>
              <button>Follow</button>
              <button>Dismiss</button>
            </div>
          </div>
        </div>
        <div className={"item"}>
          <span>Latest Activities</span>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img
                src={"https://i.ibb.co/QQCQ1np/No-comments-6.png"}
                alt={""}
              />
              <p>
                <span>S. N.</span> wrote a new post
              </p>
            </div>
            <span>2 min ago</span>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img
                src={"https://i.ibb.co/p3ZWzc5/No-Comments-3.png"}
                alt={""}
              />
              <p>
                <span>M. F.</span> added A. V. as a friend
              </p>
            </div>
            <span>7 min ago</span>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img
                src={"https://i.ibb.co/kDT4GYH/Delivery-boy-3.png"}
                alt={""}
              />
              <p>
                <span>A. V.</span> added M. F. as a friend
              </p>
            </div>
            <span>7 min ago</span>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img src={"https://i.ibb.co/B416tBW/Cranks.png"} alt={""} />
              <p>
                <span>V. A.</span> changed their cover picture
              </p>
            </div>
            <span>9 min ago</span>
          </div>
        </div>
        <div className={"item"}>
          <span>Online Friends</span>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img src={"https://i.ibb.co/B416tBW/Cranks.png"} alt={""} />
              <div className={"online"} />
              <span>Vladislav Avtaykin</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img src={"https://i.ibb.co/6FCSGNC/Cranks-1.png"} alt={""} />
              <div className={"online"} />
              <span>Dmitry Akimov</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img src={"https://i.ibb.co/gML8kGm/Cranks-2.png"} alt={""} />
              <div className={"online"} />
              <span>Konstantin Babansky</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img src={"https://i.ibb.co/rskzKns/Delivery-boy.png"} alt={""} />
              <div className={"online"} />
              <span>Andrey Batalov</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img
                src={"https://i.ibb.co/kDT4GYH/Delivery-boy-3.png"}
                alt={""}
              />
              <div className={"online"} />
              <span>Artyom Volosatov</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img
                src={"https://i.ibb.co/DKpfqYn/Delivery-boy-4.png"}
                alt={""}
              />
              <div className={"online"} />
              <span>Maxim Emelyanov</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img
                src={"https://i.ibb.co/mbqCLjh/Delivery-boy-5.png"}
                alt={""}
              />
              <div className={"online"} />
              <span>Egor Ermolov</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img src={"https://i.ibb.co/FsbWRdF/E-commerce.png"} alt={""} />
              <div className={"online"} />
              <span>Ivan Esaulov</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img src={"https://i.ibb.co/Gskp277/E-commerce-1.png"} alt={""} />
              <div className={"online"} />
              <span>Matvey Zhbannikov</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img
                src={"https://i.ibb.co/4NtNz6h/Funny-Bunny-1.png"}
                alt={""}
              />
              <div className={"online"} />
              <span>Dmitry Zhuravlev</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img
                src={"https://i.ibb.co/rpywkZf/Funny-Bunny-5.png"}
                alt={""}
              />
              <div className={"online"} />
              <span>Konstantin Kazanin</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img src={"https://i.ibb.co/FKHmGSD/Guacamole-1.png"} alt={""} />
              <div className={"online"} />
              <span>Alexander Koltunov</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img src={"https://i.ibb.co/hHMzL5k/Guacamole-3.png"} alt={""} />
              <div className={"online"} />
              <span>Roman Kosenko</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img src={"https://i.ibb.co/27yFNK7/Juicy-1.png"} alt={""} />
              <div className={"online"} />
              <span>Nikolai Levchenko</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img
                src={"https://i.ibb.co/wQBYJDN/No-comments-4.png"}
                alt={""}
              />
              <div className={"online"} />
              <span>Victor Lipps</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img
                src={"https://i.ibb.co/QQCQ1np/No-comments-6.png"}
                alt={""}
              />
              <div className={"online"} />
              <span>Sharifjon Nuridinov</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img
                src={"https://i.ibb.co/PWPBKRT/No-comments-7.png"}
                alt={""}
              />
              <div className={"online"} />
              <span>Timur Rozhentsev</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img
                src={"https://i.ibb.co/FH870xL/No-comments-9.png"}
                alt={""}
              />
              <div className={"online"} />
              <span>Kirill Salykin</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img
                src={"https://i.ibb.co/g3dT6wL/No-Comments-1.png"}
                alt={""}
              />
              <div className={"online"} />
              <span>Artem Skripachev</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img
                src={"https://i.ibb.co/p3ZWzc5/No-Comments-3.png"}
                alt={""}
              />
              <div className={"online"} />
              <span>Maxim Feofanov</span>
            </div>
          </div>
          <div className={"user"}>
            <div className={"userInfo"}>
              <img src={"https://i.ibb.co/pyrbrqM/No-gravity-2.png"} alt={""} />
              <div className={"online"} />
              <span>Ilya Chekaldin</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default RightBar;
