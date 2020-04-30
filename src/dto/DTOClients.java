package dto;
import dataConnect.HibernateUtil;
import model.ClientsEntity;
import model.MoviesEntity;
import model.RentingEntity;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class DTOClients {

    private static List<model.ClientsEntity> clients;

    public static List<model.ClientsEntity> getAllClient(){
        clients = new ArrayList<>();
        try(Session session = dataConnect.HibernateUtil.getSessionFactory().openSession()){
            clients = session.createQuery("from ClientsEntity ", model.ClientsEntity.class).list();

        }catch (Exception e){
            System.out.println(e.getMessage()+"DTOClients Message");
        }
        return clients;
    }

    public static void addClientToDatabase(model.ClientsEntity client){
        Transaction transaction = null;
        try(Session session = dataConnect.HibernateUtil.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            System.out.println(client.toString());
            session.save(client);
            transaction.commit();
        }catch (Exception e){
            if(transaction != null){
                transaction.rollback();
            }
            System.out.println("Add Client Exception, Message: " + e.getMessage());
        }
    }

    public static void deleteClient(model.ClientsEntity client){
        Transaction transaction = null;
        try(Session session = dataConnect.HibernateUtil.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            model.ClientsEntity deletedClient = (model.ClientsEntity)session.load(model.ClientsEntity.class,client.getId());
            session.delete(deletedClient);
            transaction.commit();
        }catch(Exception e){
            if(transaction != null){
                transaction.rollback();
            }
            System.out.println("Client delete exception: " + e.getMessage());
        }
    }

    public static void editClient(model.ClientsEntity client){
        Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            session.update(client);
            transaction.commit();
        }catch(Exception e){
            if(transaction != null){
                transaction.rollback();
            }
            System.out.println("Client delete exception: " + e.getMessage());
        }
    }


}
