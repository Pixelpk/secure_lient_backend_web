<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Invoice;
use App\Estimate;
use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ReportController extends Controller
{
    public function totalRecords()
    {
        $invoice_data = Invoice::latest()->first();
        $estimate_data = Estimate::latest()->first();
        return response()->json([
            'invoice_id' => $invoice_data->id+1,
            'estimate_id' => $estimate_data->id+1
        ]);
    }

    public function dashboard()
    {
        $user_id = Auth::user()->id;
        $year = date('Y');
        $month = date('m');
        $total_revenue = Invoice::where('user_id', $user_id)->whereYear('date', $month)->sum('markup');
        $total_invoices = Invoice::where('user_id', $user_id)->whereMonth('date', $month)->sum('total');
        $total_estimates = Estimate::where('user_id', $user_id)->whereYear('date', $year)->sum('total');

        return response()->json([
            'total_revenue' => $total_revenue,
            'total_invoice' => $total_invoices,
            'total_estimate' => $total_estimates
        ]);
    }

    public function revenue()
    {
        $user_id = Auth::user()->id;
        $year = date('Y');
        $months = [];
        $startMonth = Carbon::now()->startOfYear()->format('M');
        $endMonth = Carbon::now()->endOfYear()->format('M');
        $monthRange = CarbonPeriod::create($startMonth, '1 month', $endMonth);
        foreach ($monthRange as $key=>$month){
            $months[$key]['month_name'] = Carbon::parse($month)->format('M');
            $months[$key]['month_number'] = Carbon::parse($month)->format('m');
        }

        $year_total_sum = Invoice::select('markup')
            ->where('user_id', $user_id)
            ->whereYear('date',$year)
            ->sum('markup');

        $month_vise = [];
        foreach ($months as $key => $month) {
            $month_vise[$key]['month_name'] = $month['month_name'];
            $month_vise[$key]['total'] = Invoice::select('markup')
            ->where('user_id', $user_id)
            ->whereYear('date',$year)
            ->whereMonth('date',$month['month_number'])
            ->sum('markup');
        }

        return response()->json([
            'year' => $year,
            'total' => $year_total_sum,
            'months' => $month_vise
        ]);
    }

    public function invoice()
    {
        $user_id = Auth::user()->id;
        $year = date('Y');
        $months = [];
        $startMonth = Carbon::now()->startOfYear()->format('M');
        $endMonth = Carbon::now()->endOfYear()->format('M');
        $monthRange = CarbonPeriod::create($startMonth, '1 month', $endMonth);
        foreach ($monthRange as $key=>$month){
            $months[$key]['month_name'] = Carbon::parse($month)->format('M');
            $months[$key]['month_number'] = Carbon::parse($month)->format('m');
        }

        $year_total_paid = Invoice::select('total')
            ->where('user_id', $user_id)
            ->where('status', 1)
            ->whereYear('date',$year)
            ->sum('total');
        $year_total_unpaid = Invoice::select('total')
            ->where('user_id', $user_id)
            ->where('status', 0)
            ->whereYear('date',$year)
            ->sum('total');
        $year_total_count = Invoice::select('total')
            ->where('user_id', $user_id)
            ->whereYear('date',$year)
            ->count();

        $month_vise = [];
        foreach ($months as $key => $month) {
            $month_vise[$key]['month_name'] = $month['month_name'];
            $month_vise[$key]['paid'] = Invoice::invoiceMonthDateSum(1,$year,$month['month_number']);
            $month_vise[$key]['unpaid'] = Invoice::invoiceMonthDateSum(0,$year,$month['month_number']);
            $month_vise[$key]['issued'] = Invoice::select('total')
            ->where('user_id', $user_id)
            ->whereYear('date',$year)
            ->whereMonth('date',$month['month_number'])
            ->count();
        }
        return response()->json([
            'year' => $year,
            'issued' => $year_total_count,
            'paid' => $year_total_paid,
            'unpaid' => $year_total_unpaid,
            'month_vise' => $month_vise
        ]);
    }

    public function estimate()
    {
        $user_id = Auth::user()->id;
        $year = date('Y');
        $months = [];
        $startMonth = Carbon::now()->startOfYear()->format('M');
        $endMonth = Carbon::now()->endOfYear()->format('M');
        $monthRange = CarbonPeriod::create($startMonth, '1 month', $endMonth);
        foreach ($monthRange as $key=>$month){
            $months[$key]['month_name'] = Carbon::parse($month)->format('M');
            $months[$key]['month_number'] = Carbon::parse($month)->format('m');
        }

        $year_total_declined = Estimate::select('total')
            ->where('user_id', $user_id)
            ->where('status', 2)
            ->whereYear('date',$year)
            ->sum('total');
        $year_total_approved = Estimate::select('total')
            ->where('user_id', $user_id)
            ->where('status', 1)
            ->whereYear('date',$year)
            ->sum('total');
        $year_total_pending = Estimate::select('total')
            ->where('user_id', $user_id)
            ->where('status', 0)
            ->whereYear('date',$year)
            ->sum('total');
        $year_total_count = Estimate::select('total')
            ->where('user_id', $user_id)
            ->whereYear('date',$year)
            ->count();

        $month_vise = [];
        foreach ($months as $key => $month) {
            $month_vise[$key]['month_name'] = $month['month_name'];
            $month_vise[$key]['declined'] = Estimate::estimateMonthDateSum(2,$year,$month['month_number']);
            $month_vise[$key]['approved'] = Estimate::estimateMonthDateSum(1,$year,$month['month_number']);
            $month_vise[$key]['pending'] = Estimate::estimateMonthDateSum(0,$year,$month['month_number']);
            $month_vise[$key]['issued'] = Estimate::select('total')
            ->where('user_id', $user_id)
            ->whereYear('date',$year)
            ->whereMonth('date',$month['month_number'])
            ->count();
        }
        return response()->json([
            'year' => $year,
            'issued' => $year_total_count,
            'pending' => $year_total_pending,
            'approved' => $year_total_approved,
            'declined' => $year_total_declined,
            'month_vise' => $month_vise
        ]);
    }
}
