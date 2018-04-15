{:user {:plugins [[lein-ancient "0.6.15"]
                  [lein-autoexpect "1.9.0"]
                  [lein-count "1.0.8"]
                  [lein-expectations "0.0.8"]
                  [lein-kibit "0.1.5"]
                  [lein-plz "0.4.0-SNAPSHOT" :exclusions [[rewrite-clj] [ancient-clj]]]
                  [lein-cprint "1.3.0"]]
        :dependencies [[slamhound "1.5.5"]]
        :aliases {"slamhound" ["run" "-m" "slam.hound"]}}}
