//
//  SupabaseManager.swift
//  ProfChamp2025
//
//  Created by Ainur on 21.01.2025.
//


import SwiftUI
import Supabase

final class SupabaseManager {
    static let shared = SupabaseManager()
    
    private let supabaseURL = URL(string: "https://paprxkkudtlnnrxoilet.supabase.co")!
    private let supabaseKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBhcHJ4a2t1ZHRsbm5yeG9pbGV0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzczMTY3MzMsImV4cCI6MjA1Mjg5MjczM30.RvQ-AS-C09UbOreWO0-RtMK4odrTLnI2RbTdd91E4Ik"
    
    lazy var client: SupabaseClient = {
        SupabaseClient(supabaseURL: supabaseURL, supabaseKey: supabaseKey)
    }()
}

//private final class SupabaseManager {
//    static let shared = SupabaseManager()
//    
//    private let supabaseURL = URL(string: "https://xyzcompany.supabase.co")!
//    private let supabaseKey = "public-anon-key"
//    
//    lazy var client: SupabaseClient = {
//        SupabaseClient(supabaseURL: supabaseURL, supabaseKey: supabaseKey)
//    }()
//}
//   
