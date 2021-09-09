package compose

import (
	"math"
	"strconv"
	"time"

	"github.com/kudrykv/latex-yearly-planner/app/components/calendar"
	"github.com/kudrykv/latex-yearly-planner/app/components/header"
	"github.com/kudrykv/latex-yearly-planner/app/components/page"
	"github.com/kudrykv/latex-yearly-planner/app/config"
)

func Monthly(cfg config.Config) []page.Page {
	pages := make([]page.Page, 0, 12)

	for month := time.January; month <= time.December; month++ {
		right := header.Items{}
		if month > time.January {
			right = append(right, header.NewTextItem((month - 1).String()))
		}

		if month < time.December {
			right = append(right, header.NewTextItem((month + 1).String()))
		}

		qrtr := int(math.Ceil(float64(month) / 3.))
		pages = append(pages, page.Page{
			Tpl: cfg.Blocks.Monthly.Tpl,
			Header: header.Header{
				Left: header.Items{
					header.NewIntItem(cfg.Year),
					header.NewTextItem("Q" + strconv.Itoa(qrtr)),
					header.NewMonthItem(month).Ref(),
				},
				Right: right,
			},
			Body: calendar.NewYearMonth(cfg.Year, month).Calendar(cfg.WeekStart),
		})
	}

	return pages
}